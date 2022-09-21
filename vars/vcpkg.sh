
if [ -z "$VCPKG_ROOT" ]; then
  export VCPKG_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." &> /dev/null && pwd)/vcpkg"
fi

export VCPKG_OVERLAY_TRIPLETS="$VCPKG_ROOT/overlay/triplets"
export VCPKG_OVERLAY_PORTS="$VCPKG_ROOT/overlay/osx:$VCPKG_ROOT/overlay/ports"
