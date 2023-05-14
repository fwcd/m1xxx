# M1xxx

[![Build](https://github.com/fwcd/m1xxx/actions/workflows/build.yml/badge.svg)](https://github.com/fwcd/m1xxx/actions/workflows/build.yml)

> NOTE: Official Apple Silicon snapshot builds of Mixxx are now available for download [here](https://mixxx.org/download/#testing)

Unofficial Apple Silicon (arm64 macOS) builds of the free and open source DJ software [Mixxx](https://mixxx.org/).

![Screenshot](images/screenshot.png)

## Installation

[Get the most recent binaries from GitHub Releases here.](https://github.com/fwcd/m1xxx/releases)

Alternatively you can install `m1xxx` via [Homebrew](https://brew.sh/) using

```sh
brew tap fwcd/mixxx
brew install --cask m1xxx
```

This has the additional advantage of making it easy to upgrade or remove `m1xxx`.

## Background

Mixxx currently only provides builds for x86-64 macOS. While these run fine under Rosetta 2, native Mixxx builds for arm64 run at roughly half the CPU load and feel noticeably more snappy than the x86-64 version.

Mixxx requires Qt 5.12 due to a breaking change in the OpenGL views that underpin waveform rendering, the first version of Qt that supports arm64 macOS, however, is 5.15. Therefore the linked `vcpkg` fork [backports the required patches](https://github.com/mixxxdj/vcpkg/tree/2.4/overlay/osx/qt5-base/patches) for supporting Qt 5.12 on arm64 macOS.

In short, this repo builds Mixxx's dependencies, including a patched version of Qt, and Mixxx itself by cross-compiling to arm64 macOS in GitHub Actions.

## Upstreaming process

Both the `mixxx` and the `vcpkg` branch now use the official upstream revisions.

## Building natively on Apple Silicon (arm64 macOS) hosts

While the CI workflows in this repo mainly deal with the case of cross-compiling Mixxx from x86_64 macOS runners to arm64, it is also possible to compile directly from an arm64 macOS (Apple Silicon) host.

First, make sure to have Homebrew installed and the submodules in this repo checked out (using `git submodule update`). To install the system dependencies, run:

```sh
scripts/install-brew-deps
```

To compile and install Mixxx's dependencies into `vcpkg` run:

```sh
scripts/bootstrap-vcpkg
scripts/install-vcpkg-deps
```

> Note: If vcpkg produces a 'missing Python' error message, make sure to have `python` on your PATH, e.g. by symlinking it to `python3` with `ln -s /opt/homebrew/bin/python3 /usr/local/bin/python`.

To build Mixxx, run:

```sh
. vars/native-env.sh

cd mixxx
cmake -B build -G Ninja
cmake --build build
```

## Credits

Thanks to [`daschuer`](https://github.com/daschuer) for the work involved in backporting the relevant Qt patches, parts of the CI workflows and assistance in building the dependencies!
