varsdir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

source "$varsdir/vcpkg.sh"

export VCPKG_DEFAULT_TRIPLET=arm64-osx-release
export CMAKE_TOOLCHAIN_FILE="$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake"
export CMAKE_EXPORT_COMPILE_COMMANDS=ON
