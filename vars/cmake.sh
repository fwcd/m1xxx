if [ "$(basename $(pwd))" != m1xxx ]; then
  echo "cmake.sh must be sourced from the repository root!"
  exit 1
fi

if [ -z "$VCPKG_ROOT" ]; then
  echo "VCPKG_ROOT must be set when sourcing cmake.sh!"
  exit 1
fi

export CMAKE_TOOLCHAIN_FILE="$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake"
