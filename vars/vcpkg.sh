rootdir=$(cd "$(dirname $0)/.." && pwd)

if [ -z "$VCPKG_ROOT" ]; then
  export VCPKG_ROOT="$rootdir/vcpkg"
fi

export VCPKG_OVERLAY_TRIPLETS="$rootdir/overlay/triplets:$VCPKG_ROOT/overlay/triplets"
export VCPKG_OVERLAY_PORTS="$VCPKG_ROOT/overlay/osx:$VCPKG_ROOT/overlay/ports"
