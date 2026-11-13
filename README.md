[![Buy me a coffee!](docs/bymeacoffee.png)](https://link.mercadopago.com.br/buymecoke)

**Help bring more projects to the community.** This is a passion project with
no profit motive, no sponsors and no outside funding so far. Every piece of
equipment, all materials and every hour of development have been paid for or
contributed personally, without reimbursement.

Your contribution helps sustain Seaquest for MSX1 and makes room for new
projects, with the code always freely available to the community. More financial
support means more resources and time to build, test and share. If you enjoy
this work and want to see more of it, please consider buying me a coffee.
Every contribution helps keep these projects moving. Thank you for being part
of what comes next!

# MSX BarePI
Bare-metal MSX emulation project for the Raspberry Pi 3B.

## How to use

1) Download the `sdcard-rpi3b.zip` asset from the latest release.
2) Extract its contents to the root of the SD card (make sure everything is at the root).
3) Insert the SD card into the Raspberry Pi and power it on.
4) Have fun!

## Current status

- The main build workflow uses `src` (kernel + fMSX/Circle runtime).
- Main command: `make`.
- Default artifact: `artifacts/kernel8-default.img`.
- On issue branches named `<number>-...`, the build also generates `artifacts/kernel8-issue<number>.img`.
- Media preparation: `make sdcard` (official workflow: `scripts/prepare-sd.sh`).
- Offline packaging: `make package` (dry run without formatting a physical disk).

## Requirements

- An AArch64 toolchain on PATH (`aarch64-none-elf-*`, `aarch64-elf-*`, or `aarch64-linux-gnu-*`).
- Script dependencies validated by `scripts/check-toolchain.sh`.
- Repositories in `third_party/` present and intact.

## Raspberry Pi 3B hardware

For runtime tests, HDMI audio, and sustained emulation, treat thermal conditions and the power supply as part of the validation environment.

- Use a stable power supply and a good-quality cable.
- Avoid underpowered supplies, cables with excessive voltage drop, and TV/monitor USB ports as the main power source.
- Use heatsinks on the SoC and PMIC as a baseline bench setup.
- For long sessions, prefer active cooling or consistent airflow inside the enclosure.
- With a closed enclosure, check the actual temperature under load; an attractive case without ventilation can cause early clock throttling.

Practical project experience:

- The Raspberry Pi 3B may reduce the ARM clock as temperatures rise.
- In `msxbarepi`, this has been observed in the field as a drop from `1200MHz` to `600MHz` or another dynamic clock level, directly affecting the frame budget.
- Power and thermal issues can resemble emulation bugs: FPS drops after some time, audio starts to degrade, and behavior worsens during more demanding gameplay.
- Before concluding that there is a software regression, check the power supply, cable, heat dissipation, and ventilation.

Quick environment check:

```
./scripts/check-toolchain.sh
```

Toolchain installation/recommendations by operating system:

```
./scripts/install-toolchains.sh
```

## Main directory structure

- `src/`: main runtime and emulation backend integration.
- `include/`: local headers.
- `linker/`: linker scripts.
- `scripts/`: build, SD, benchmark, and validation utilities.
- `docs/`: technical and operational documentation.
- `docs/legal/`: licenses and attributions.
- `third_party/`: reference/upstream repositories (`fmsx`, `circle`, `bluemsx`).
- `artifacts/`: generated binaries/images.

## Build

Default build:

```
make
```

Build with debug support compiled in (recommended during development):

```
make DEBUG=1
```

Configure build features (the actual Linux Kconfig/mconf frontend):

```
make menuconfig
```

Interactive menuconfig shortcuts are the same as in classic Linux menuconfig.

Help for targets/flags:

```
make help
```

Targets currently supported by the `Makefile`:

- `default` (the default for `make`)
- `sdcard`
- `sdcard-update`
- `initramfs`
- `package`
- `menuconfig`
- `syncconfig`
- `clean`
- `help`

Main public flags:

- `DEBUG=0|1`
- `OWNER="<name>"` (effective build owner/tag; determines the package name in `make package`)
- `MSXBARE_PATREON_TAG="<name>"` (same as `OWNER` when `OWNER` is not specified)
- `FIRMWARE_DIR=<dir>`
- `MSXBARE_BOOT_STRATEGY=standalone|multicore` (default: `standalone`; also available in `make menuconfig`; `standalone` embeds the initramfs, uses RAW storage for settings, and does not require `msx.cpio`; `multicore` generates `msx.cpio`, uses `SD:/msx.cfg`, and retains `initramfs msx.cpio followkernel`)
- `CROSS=<prefix>`
- Precedence in `make`: command-line flags override `.config`; `.config` overrides `Makefile` defaults.

## SD card workflow

Official workflow (interactive, with formatting):

```
make sdcard
```

With a custom kernel:

```
KERNEL_IMG=artifacts/kernel8-default.img FIRMWARE_DIR=./rpi-firmware make sdcard
```

Dry run (without writing to disk):

```
DRY_RUN=1 make sdcard
```

On macOS, the workflow uses `diskutil`. On Linux, it uses `lsblk` for detection and `parted` + `mkfs.vfat` + `udisksctl` for formatting/mounting.

Incremental update without formatting the SD card:

```
make sdcard-update
```

The incremental workflow runs `sync` at the end and attempts to unmount the SD card automatically; with `EJECT_AT_END=1`, it safely ejects the card when the target disk can be identified.

## Boot strategy

The build default is `MSXBARE_BOOT_STRATEGY=standalone`. In this mode, the build generates `build/initramfs/msx-embedded.cpio`, embeds the CPIO in the kernel, writes `msx.img` to the SD card, and uses a RAW snapshot to read/write settings, with `SD:/msx.cfg` as a read fallback.

To prepare a multicore SD card, use `MSXBARE_BOOT_STRATEGY=multicore`. In this mode, the workflow generates `msx.cpio`, retains `initramfs msx.cpio followkernel` in the effective `config.txt`, disables the RAW snapshot, and forces settings to be read/written through `SD:/msx.cfg` before backend initialization.

In multicore mode, switching through the `CORE` item in Settings always rewrites `SD:/config.txt` with `kernel=<core>.img` and `initramfs <core>.cpio followkernel` before rebooting, including when returning to `CORE [msx]`.

Generate the external `msx.cpio` directly:

```
./scripts/make-initramfs.sh roms/initramfs sdcard/msx.cpio
```

Through the Makefile:

```
make initramfs INITRAMFS_IN=roms/initramfs INITRAMFS_OUT=sdcard/msx.cpio
```

## Packaging

Offline SD card ZIP package:

```
make package
```

The target uses the same payload workflow as `make sdcard`, but in offline/dry-run mode, producing a ZIP file. By default, it follows the safe non-interactive behavior (`COPY_GAMES_TO_ROOT=0`): it copies `msx/cheats/` and creates `msx/roms/` and `msx/disks/`, without copying all games.

With owner identification:

```
DEBUG=1 OWNER="BetaUser" FIRMWARE_DIR=./rpi-firmware make package
```

With a full copy of `roms/games` into `msx/` in the ZIP:

```
COPY_GAMES_TO_ROOT=1 make package
```

Configure and apply `.config` without opening the UI:

```
make syncconfig
```

Generated configuration files:

- `.config`
- `.config.mk`
- `build/config.mk`

## Benchmarking and regression

Create a session:

```
./scripts/perf-regression.sh init --tag baseline --make-target default --make-flags "DEBUG=1"
```

Compare sessions:

```
./scripts/perf-regression.sh compare --base artifacts/benchmarks/<base-session> --candidate artifacts/benchmarks/<candidate-session>
```

## Technical policy (summary)

- Target: Raspberry Pi 3B, AArch64; the build preserves `kernel8-*` artifacts, and the SD workflow writes the core as `msx.img`.
- Freestanding build without libc.
- HDMI is the required video output; UART provides auxiliary debugging.
- Do not modify `third_party/circle` or `third_party/fmsx` directly.
- Validate `third_party` integrity before building (`make guard-third-party`).

## Third-party

Inventory and commands to repopulate dependencies:

- `third_party/README.md`

Primary technical references for implementation/fixes:

- `third_party/fmsx`
- `third_party/circle`

## Related documentation

- Operational workflow and guardrails: `AGENTS.md`
- Handoff context pointer: `CONTEXT.md`
- Canonical instructions by area: `.github/instructions/*.instructions.md`
- Script documentation: `scripts/README.md`
- Project management: `docs/github-project-management.md`
- Decoupled machine profiles (MSX1/MSX2/MSX2+): `docs/machine-profiles/README.md`
- Flowchart from bare-metal boot to emulation: `docs/fluxograma-boot-baremetal-rpi-msx.md`
