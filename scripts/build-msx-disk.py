#!/usr/bin/env python3

from __future__ import annotations

import argparse
import math
import sys
from dataclasses import dataclass, field
from datetime import datetime
from pathlib import Path


SCRIPT_DIR = Path(__file__).resolve().parent
BASE_IMAGE_PATH = SCRIPT_DIR / "DISKBASE.DSK"
SECTOR_SIZE = 512
TOTAL_SECTORS = 1440
IMAGE_SIZE = SECTOR_SIZE * TOTAL_SECTORS
SECTORS_PER_CLUSTER = 2
CLUSTER_SIZE = SECTOR_SIZE * SECTORS_PER_CLUSTER
RESERVED_SECTORS = 1
FAT_COUNT = 2
ROOT_ENTRIES = 112
ROOT_DIR_SECTORS = (ROOT_ENTRIES * 32 + SECTOR_SIZE - 1) // SECTOR_SIZE
SECTORS_PER_FAT = 3
FIRST_DATA_SECTOR = RESERVED_SECTORS + FAT_COUNT * SECTORS_PER_FAT + ROOT_DIR_SECTORS
DATA_SECTORS = TOTAL_SECTORS - FIRST_DATA_SECTOR
DATA_CLUSTERS = DATA_SECTORS // SECTORS_PER_CLUSTER
FAT_OFFSET = RESERVED_SECTORS * SECTOR_SIZE
ROOT_DIR_OFFSET = (RESERVED_SECTORS + FAT_COUNT * SECTORS_PER_FAT) * SECTOR_SIZE
MEDIA_DESCRIPTOR = 0xF9
FAT12_EOF = 0xFFF
DEFAULT_LABEL = "MSXDISK"
ALLOWED_DOS_CHARS = set("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&'()-@^_{}~")


class DiskBuildError(Exception):
    pass


@dataclass
class BuildStats:
    files: int = 0
    directories: int = 0
    skipped_hidden: int = 0
    file_bytes: int = 0


@dataclass
class Node:
    source_path: Path
    relative_path: Path
    is_dir: bool
    dos_name: bytes
    mtime: float
    size: int = 0
    children: list["Node"] = field(default_factory=list)
    start_cluster: int = 0
    cluster_count: int = 0
    clusters: list[int] = field(default_factory=list)


def is_hidden_name(name: str) -> bool:
    return name.startswith(".")


def inside_directory(path: Path, directory: Path) -> bool:
    try:
        path.relative_to(directory)
        return True
    except ValueError:
        return False


def normalize_volume_label(label: str) -> bytes:
    cleaned = []
    for char in label.upper():
        if char.isascii() and char.isalnum():
            cleaned.append(char)
        elif char in (" ", "_", "-"):
            cleaned.append(" ")
    normalized = " ".join("".join(cleaned).split()).strip() or DEFAULT_LABEL
    return normalized[:11].ljust(11).encode("ascii")


def normalize_component(text: str, label: str) -> str:
    if not text:
        raise DiskBuildError(f"{label}: nome vazio nao e permitido")
    if not text.isascii():
        raise DiskBuildError(f"{label}: apenas nomes ASCII sao suportados na imagem MSX")

    normalized = text.upper()
    invalid = sorted({char for char in normalized if char not in ALLOWED_DOS_CHARS})
    if invalid:
        invalid_text = "".join(invalid)
        raise DiskBuildError(
            f"{label}: caracteres fora do padrao DOS 8.3/MSX detectados: {invalid_text!r}"
        )
    return normalized


def make_dos_name(name: str, is_dir: bool, label: str) -> bytes:
    if name in (".", ".."):
        raise DiskBuildError(f"{label}: nome reservado nao pode entrar na imagem")

    if is_dir:
        if "." in name:
            raise DiskBuildError(f"{label}: diretorios devem ter nome DOS 8.3 sem ponto")
        base = normalize_component(name, label)
        if len(base) > 8:
            raise DiskBuildError(f"{label}: diretorio excede 8 caracteres no formato DOS 8.3")
        return base.ljust(8).encode("ascii") + b"   "

    if name.count(".") > 1:
        raise DiskBuildError(f"{label}: arquivo com mais de um ponto nao cabe em DOS 8.3")

    if "." in name:
        base_part, ext_part = name.rsplit(".", 1)
    else:
        base_part, ext_part = name, ""

    base = normalize_component(base_part, label)
    ext = normalize_component(ext_part, label) if ext_part else ""

    if len(base) > 8:
        raise DiskBuildError(f"{label}: nome-base excede 8 caracteres no formato DOS 8.3")
    if len(ext) > 3:
        raise DiskBuildError(f"{label}: extensao excede 3 caracteres no formato DOS 8.3")

    return base.ljust(8).encode("ascii") + ext.ljust(3).encode("ascii")


def build_tree(source_dir: Path, stats: BuildStats) -> Node:
    root = Node(
        source_path=source_dir,
        relative_path=Path("."),
        is_dir=True,
        dos_name=b"",
        mtime=source_dir.stat().st_mtime,
    )
    populate_children(root, stats)
    return root


def populate_children(node: Node, stats: BuildStats) -> None:
    entries = sorted(
        node.source_path.iterdir(),
        key=lambda item: (not item.is_dir(), item.name.upper(), item.name),
    )
    used_names: dict[bytes, Path] = {}

    for entry in entries:
        if is_hidden_name(entry.name):
            stats.skipped_hidden += 1
            continue
        if entry.is_symlink():
            raise DiskBuildError(
                f"{node.relative_path / entry.name}: links simbolicos nao sao suportados"
            )

        relative_path = node.relative_path / entry.name
        dos_name = make_dos_name(entry.name, entry.is_dir(), str(relative_path))
        previous = used_names.get(dos_name)
        if previous is not None:
            raise DiskBuildError(
                f"{relative_path}: colisao de nomes apos normalizacao DOS 8.3 com {previous}"
            )
        used_names[dos_name] = relative_path

        child = Node(
            source_path=entry,
            relative_path=relative_path,
            is_dir=entry.is_dir(),
            dos_name=dos_name,
            mtime=entry.stat().st_mtime,
        )
        if child.is_dir:
            stats.directories += 1
            populate_children(child, stats)
        else:
            child.size = entry.stat().st_size
            stats.files += 1
            stats.file_bytes += child.size
        node.children.append(child)


def collect_allocated_nodes(root: Node) -> list[Node]:
    nodes: list[Node] = []

    def walk(node: Node) -> None:
        for child in node.children:
            if child.is_dir:
                directory_entries = 2 + len(child.children)
                directory_bytes = directory_entries * 32
                child.cluster_count = max(1, math.ceil(directory_bytes / CLUSTER_SIZE))
                nodes.append(child)
                walk(child)
            else:
                child.cluster_count = math.ceil(child.size / CLUSTER_SIZE)
                if child.cluster_count:
                    nodes.append(child)

    walk(root)
    return nodes


def assign_clusters(root: Node) -> list[Node]:
    nodes = collect_allocated_nodes(root)
    free_clusters = list(range(2, DATA_CLUSTERS + 2))

    required_clusters = sum(node.cluster_count for node in nodes)
    if required_clusters > len(free_clusters):
        capacity = len(free_clusters) * CLUSTER_SIZE
        raise DiskBuildError(
            "conteudo excede a capacidade livre do disco-base 720KB "
            f"({capacity} bytes uteis de dados FAT12)"
        )

    cursor = 0
    for node in nodes:
        node.clusters = free_clusters[cursor : cursor + node.cluster_count]
        node.start_cluster = node.clusters[0] if node.clusters else 0
        cursor += node.cluster_count

    if len(root.children) + 1 > ROOT_ENTRIES:
        raise DiskBuildError(
            f"diretorio raiz excede o limite FAT12 de {ROOT_ENTRIES} entradas"
        )

    return nodes


def build_fat_entries(nodes: list[Node]) -> list[int]:
    entries = [0] * (DATA_CLUSTERS + 2)
    for node in nodes:
        if not node.clusters:
            continue
        for index, cluster in enumerate(node.clusters):
            entries[cluster] = (
                FAT12_EOF if index == len(node.clusters) - 1 else node.clusters[index + 1]
            )
    return entries


def encode_fat12(entries: list[int]) -> bytes:
    fat = bytearray(SECTORS_PER_FAT * SECTOR_SIZE)
    fat[0] = MEDIA_DESCRIPTOR
    fat[1] = 0xFF
    fat[2] = 0xFF

    for cluster in range(2, len(entries)):
        value = entries[cluster] & 0xFFF
        offset = cluster + (cluster // 2)
        if cluster & 1:
            fat[offset] = (fat[offset] & 0x0F) | ((value << 4) & 0xF0)
            fat[offset + 1] = (value >> 4) & 0xFF
        else:
            fat[offset] = value & 0xFF
            fat[offset + 1] = (fat[offset + 1] & 0xF0) | ((value >> 8) & 0x0F)

    return bytes(fat)


def dos_date_time(timestamp: float) -> tuple[int, int]:
    dt = datetime.fromtimestamp(timestamp)
    year = min(max(dt.year, 1980), 2107)
    dos_date = ((year - 1980) << 9) | (dt.month << 5) | dt.day
    dos_time = (dt.hour << 11) | (dt.minute << 5) | (dt.second // 2)
    return dos_date, dos_time


def make_directory_entry(
    dos_name: bytes,
    attributes: int,
    start_cluster: int,
    size: int,
    timestamp: float,
) -> bytes:
    dos_date, dos_time = dos_date_time(timestamp)
    entry = bytearray(32)
    entry[0:11] = dos_name
    entry[11] = attributes
    entry[14:16] = dos_time.to_bytes(2, "little")
    entry[16:18] = dos_date.to_bytes(2, "little")
    entry[18:20] = dos_date.to_bytes(2, "little")
    entry[22:24] = dos_time.to_bytes(2, "little")
    entry[24:26] = dos_date.to_bytes(2, "little")
    entry[26:28] = start_cluster.to_bytes(2, "little")
    entry[28:32] = size.to_bytes(4, "little")
    return bytes(entry)


def build_directory_bytes(node: Node, parent_cluster: int) -> bytes:
    entries = [
        make_directory_entry(b".          ", 0x10, node.start_cluster, 0, node.mtime),
        make_directory_entry(b"..         ", 0x10, parent_cluster, 0, node.mtime),
    ]

    for child in node.children:
        attributes = 0x10 if child.is_dir else 0x20
        start_cluster = child.start_cluster if child.cluster_count else 0
        size = 0 if child.is_dir else child.size
        entries.append(
            make_directory_entry(child.dos_name, attributes, start_cluster, size, child.mtime)
        )

    data = b"".join(entries)
    padded_size = node.cluster_count * CLUSTER_SIZE
    return data.ljust(padded_size, b"\x00")


def cluster_offset(cluster: int) -> int:
    sector = FIRST_DATA_SECTOR + (cluster - 2) * SECTORS_PER_CLUSTER
    return sector * SECTOR_SIZE


def write_cluster_data(image: bytearray, clusters: list[int], payload: bytes) -> None:
    for index, cluster in enumerate(clusters):
        offset = cluster_offset(cluster)
        chunk = payload[index * CLUSTER_SIZE : (index + 1) * CLUSTER_SIZE]
        image[offset : offset + CLUSTER_SIZE] = chunk.ljust(CLUSTER_SIZE, b"\x00")


def load_base_boot_sector() -> bytes:
    if not BASE_IMAGE_PATH.is_file():
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: imagem-base DISKBASE.DSK nao encontrada")

    image = BASE_IMAGE_PATH.read_bytes()
    if len(image) != IMAGE_SIZE:
        raise DiskBuildError(
            f"{BASE_IMAGE_PATH}: imagem-base invalida, esperado {IMAGE_SIZE} bytes"
        )

    if int.from_bytes(image[11:13], "little") != SECTOR_SIZE:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: bytes/sector inesperado")
    if image[13] != SECTORS_PER_CLUSTER:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: sectors/cluster inesperado")
    if int.from_bytes(image[14:16], "little") != RESERVED_SECTORS:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: reserved sectors inesperado")
    if image[16] != FAT_COUNT:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: numero de FATs inesperado")
    if int.from_bytes(image[17:19], "little") != ROOT_ENTRIES:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: root entries inesperado")
    if int.from_bytes(image[19:21], "little") != TOTAL_SECTORS:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: total de setores inesperado")
    if image[21] != MEDIA_DESCRIPTOR:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: media descriptor inesperado")
    if int.from_bytes(image[22:24], "little") != SECTORS_PER_FAT:
        raise DiskBuildError(f"{BASE_IMAGE_PATH}: setores/FAT inesperado")

    return image[:SECTOR_SIZE]


def make_volume_label_entry(volume_label: bytes, timestamp: float) -> bytes:
    return make_directory_entry(volume_label, 0x08, 0, 0, timestamp)


def build_root_directory_bytes(root: Node, volume_label: bytes) -> bytes:
    root_dir = bytearray(ROOT_DIR_SECTORS * SECTOR_SIZE)
    slot = 0
    volume_label_entry = make_volume_label_entry(volume_label, root.mtime)
    root_dir[slot * 32 : (slot + 1) * 32] = volume_label_entry
    slot += 1

    for child in root.children:
        attributes = 0x10 if child.is_dir else 0x20
        start_cluster = child.start_cluster if child.cluster_count else 0
        size = 0 if child.is_dir else child.size
        entry = make_directory_entry(
            child.dos_name,
            attributes,
            start_cluster,
            size,
            child.mtime,
        )
        root_dir[slot * 32 : (slot + 1) * 32] = entry
        slot += 1

    return bytes(root_dir)


def create_image(root: Node, volume_label: bytes) -> tuple[bytearray, int]:
    image = bytearray(IMAGE_SIZE)
    image[:SECTOR_SIZE] = load_base_boot_sector()
    nodes = assign_clusters(root)
    fat_entries = build_fat_entries(nodes)
    fat = encode_fat12(fat_entries)
    root_dir = build_root_directory_bytes(root, volume_label)

    for copy_index in range(FAT_COUNT):
        offset = FAT_OFFSET + copy_index * len(fat)
        image[offset : offset + len(fat)] = fat

    image[ROOT_DIR_OFFSET : ROOT_DIR_OFFSET + len(root_dir)] = root_dir

    for node in nodes:
        if node.is_dir:
            parent_cluster = 0
            if node.relative_path.parent != Path("."):
                parent = find_node(root, node.relative_path.parent)
                parent_cluster = parent.start_cluster
            payload = build_directory_bytes(node, parent_cluster)
            write_cluster_data(image, node.clusters, payload)
            continue

        if node.cluster_count == 0:
            continue

        payload = node.source_path.read_bytes()
        if len(payload) != node.size:
            raise DiskBuildError(f"{node.relative_path}: tamanho mudou durante a leitura")
        write_cluster_data(image, node.clusters, payload)

    used_clusters = sum(node.cluster_count for node in nodes)
    return image, used_clusters


def find_node(root: Node, relative_path: Path) -> Node:
    current = root
    if relative_path == Path("."):
        return current

    for part in relative_path.parts:
        for child in current.children:
            if child.relative_path.name == part:
                current = child
                break
        else:
            raise DiskBuildError(f"nao foi possivel localizar diretorio pai para {relative_path}")
    return current


def derive_output_path(source_dir: Path, output: str | None) -> Path:
    if output:
        return Path(output)
    return source_dir.parent / f"{source_dir.name}.dsk"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Cria uma imagem MSX FAT12 720KB (.dsk) a partir de um diretorio"
    )
    parser.add_argument("source_dir", help="Diretorio de origem com arquivos 8.3")
    parser.add_argument("output", nargs="?", help="Arquivo .dsk de saida")
    parser.add_argument(
        "--label",
        default=None,
        help="Volume label FAT (padrao: nome do diretorio/arquivo de saida)",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Sobrescreve a imagem de saida se ela ja existir",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    source_dir = Path(args.source_dir).expanduser().resolve()
    if not source_dir.is_dir():
        raise DiskBuildError(f"{source_dir}: diretorio de origem invalido")

    output_path = derive_output_path(source_dir, args.output).expanduser().resolve()
    if inside_directory(output_path, source_dir):
        raise DiskBuildError("o arquivo de saida nao pode ficar dentro do diretorio de origem")
    if output_path == BASE_IMAGE_PATH.resolve():
        raise DiskBuildError("o arquivo de saida nao pode sobrescrever scripts/DISKBASE.DSK")

    if output_path.exists() and not args.force:
        raise DiskBuildError(f"{output_path}: arquivo ja existe; use --force para sobrescrever")

    output_path.parent.mkdir(parents=True, exist_ok=True)

    stats = BuildStats()
    root = build_tree(source_dir, stats)
    label_seed = args.label or output_path.stem or source_dir.name
    volume_label = normalize_volume_label(label_seed)
    image, used_clusters = create_image(root, volume_label)
    output_path.write_bytes(image)

    used_bytes = used_clusters * CLUSTER_SIZE
    free_bytes = DATA_CLUSTERS * CLUSTER_SIZE - used_bytes
    print(
        f"output={output_path} size={IMAGE_SIZE} files={stats.files} dirs={stats.directories} "
        f"skipped_hidden={stats.skipped_hidden} used={used_bytes} free={free_bytes} "
        f"label={volume_label.decode('ascii').rstrip()} base={BASE_IMAGE_PATH.name}"
    )
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except DiskBuildError as exc:
        print(f"error: {exc}", file=sys.stderr)
        raise SystemExit(1)
