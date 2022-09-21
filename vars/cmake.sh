if [ -z "$VCPKG_ROOT" ]; then
  echo "No VCPKG_ROOT set at cmake.sh!"
  exit 1
fi

export CMAKE_TOOLCHAIN_FILE="$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake"
