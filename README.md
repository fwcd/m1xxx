# M1xxx

Unofficial Apple Silicon (arm64 macOS) builds of the free and open source DJ software [Mixxx](https://mixxx.org/).

## Background

Mixxx currently only provides builds for x86-64 macOS. While these run fine under Rosetta 2, native Mixxx builds for arm64 run at roughly half the CPU load and feel noticeably more snappy than the x86-64 version.

Mixxx requires Qt 5.12 due to a breaking change in the OpenGL views that underpin waveform rendering, the first version of Qt that supports arm64 macOS, however, is 5.15. Since upstream Mixxx has decided against building custom versions of Qt, arm64 macOS will not be supported officially until they upgrade to a newer Qt. Still, the patches between Qt 5.12 and 5.15 that introduce arm64 macOS support are isolated enough to be 'backportable', which is the approach that this repo takes.

In short, this repo builds Mixxx's dependencies, including a patched version of Qt, and Mixxx itself by cross-compiling to arm64 macOS in GitHub Actions.

## Credits

Thanks to [`daschuer`](https://github.com/daschuer) for the work involved in backporting the relevant Qt patches, parts of the CI workflows and assistance in building the dependencies!
