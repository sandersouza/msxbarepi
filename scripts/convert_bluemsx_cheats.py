#!/usr/bin/env python3

import argparse
import io
import re
import sys
import urllib.request
import zipfile
from collections import OrderedDict
from pathlib import Path


BLUE_MSX_URL = "http://bluemsx.msxblue.com/rel_download/blueMSXv282full.zip"
MCF_PREFIX = "Tools/Cheats/msx/"


def normalize(text: str) -> str:
    return re.sub(r"[^a-z0-9]+", "", text.lower())


def humanize_slug(slug: str) -> str:
    text = slug.replace("_", " ").replace("-", " ")
    text = re.sub(r"([a-z])([0-9])", r"\1 \2", text)
    text = re.sub(r"([0-9])([a-z])", r"\1 \2", text)
    text = re.sub(r"\s+", " ", text).strip()
    if not text:
        return slug
    return " ".join(word[:1].upper() + word[1:] for word in text.split(" "))


def parse_existing_catalog(path: Path):
    games = []
    current = []
    inside = False
    if not path.exists():
        return games

    for raw_line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = raw_line.rstrip()
        stripped = line.strip()
        if not stripped:
            continue
        if stripped.startswith("game "):
            if inside and current:
                games.append(current)
            inside = True
            current = [line]
        elif inside:
            current.append(line)
            if stripped == "endgame":
                games.append(current)
                current = []
                inside = False

    if inside and current:
        games.append(current)
    return games


def extract_rom_id(game_lines):
    for line in game_lines:
        stripped = line.strip()
        if stripped.startswith("rom "):
            value = stripped[4:].strip()
            if value.startswith('"') and value.endswith('"'):
                return value[1:-1]
            return value
    return ""


def load_blue_msx_titles(zf: zipfile.ZipFile):
    import xml.etree.ElementTree as ET

    title_map = {}
    with zf.open("Databases/msxromdb.xml") as fh:
        root = ET.parse(fh).getroot()

    for software in root.findall("software"):
        title = None
        for node in software.findall("title"):
            if node.attrib.get("{http://www.w3.org/XML/1998/namespace}lang") == "en":
                title = (node.text or "").strip()
                break
        if not title:
            continue

        norm = normalize(title)
        if norm and norm not in title_map:
            title_map[norm] = title

    return title_map


def resolve_title(slug: str, title_map):
    human = humanize_slug(slug)
    candidates = [
        normalize(slug),
        normalize(human),
        normalize(slug.replace("msx1", "")),
        normalize(slug.replace("msx2", "")),
    ]
    for key in candidates:
        if key and key in title_map:
            return title_map[key]
    return human


def load_blue_msx_catalog(url: str):
    with urllib.request.urlopen(url) as response:
        blob = response.read()

    with zipfile.ZipFile(io.BytesIO(blob)) as zf:
        title_map = load_blue_msx_titles(zf)
        games = OrderedDict()

        for name in sorted(zf.namelist()):
            if not name.startswith(MCF_PREFIX) or not name.endswith(".mcf"):
                continue

            slug = Path(name).stem
            rom_id = slug.upper()
            lines = zf.read(name).decode("latin-1", errors="replace").splitlines()
            cheats = OrderedDict()

            for raw_line in lines:
                line = raw_line.strip()
                if not line or line.startswith("!"):
                    continue

                parts = [part.strip() for part in line.split(",", 4)]
                if len(parts) != 5:
                    continue

                cheat_type, address_text, value_text, compare_text, cheat_title = parts
                if cheat_type != "0" or compare_text != "0":
                    continue

                try:
                    address = int(address_text, 10)
                    value = int(value_text, 10)
                except ValueError:
                    continue

                if address < 0 or address > 0xFFFF:
                    continue
                if value < 0 or value > 0xFFFF:
                    continue

                size_bits = 16 if value > 0xFF else 8
                title = cheat_title.strip() or "Cheat"
                if title not in cheats:
                    cheats[title] = []
                cheats[title].append((address, value, size_bits))

            if not cheats:
                continue

            games[rom_id] = {
                "title": resolve_title(slug, title_map),
                "rom_id": rom_id,
                "cheats": cheats,
            }

        return games


def render_catalog(games, supplemental_games):
    out = []
    out.append("# Generated from blueMSX cheat database")
    out.append(f"# Source: {BLUE_MSX_URL}")
    out.append("")

    for game in games.values():
        out.append(f'game "{game["title"]}"')
        out.append(f'rom "{game["rom_id"]}"')
        for cheat_title, pokes in game["cheats"].items():
            out.append(f'cheat "{cheat_title}"')
            for address, value, size_bits in pokes:
                width = 4 if size_bits == 16 else 2
                out.append(f'poke {address:04X} {value:0{width}X} {size_bits}')
            out.append("endcheat")
        out.append("endgame")
        out.append("")

    existing_roms = {game["rom_id"] for game in games.values()}
    for game_lines in supplemental_games:
        rom_id = extract_rom_id(game_lines)
        if not rom_id or rom_id in existing_roms:
            continue
        out.extend(game_lines)
        out.append("")

    return "\n".join(out).rstrip() + "\n"


def main():
    parser = argparse.ArgumentParser(description="Convert blueMSX MCF cheats to gamemaster.cht format")
    parser.add_argument("--output", default="sdcard/gamemaster.cht")
    parser.add_argument("--supplemental", default="sdcard/gamemaster.cht")
    parser.add_argument("--url", default=BLUE_MSX_URL)
    args = parser.parse_args()

    output_path = Path(args.output)
    supplemental_path = Path(args.supplemental)
    supplemental_games = parse_existing_catalog(supplemental_path)
    games = load_blue_msx_catalog(args.url)
    rendered = render_catalog(games, supplemental_games)
    output_path.write_text(rendered, encoding="utf-8")

    total_cheats = sum(len(game["cheats"]) for game in games.values())
    total_pokes = sum(len(pokes) for game in games.values() for pokes in game["cheats"].values())
    print(f"games={len(games)} cheats={total_cheats} pokes={total_pokes} output={output_path}")


if __name__ == "__main__":
    sys.exit(main())
