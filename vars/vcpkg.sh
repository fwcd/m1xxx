if [ -z "$VCPKG_ROOT" ]; then
  export VCPKG_ROOT="$(pwd)/vcpkg"
fi

export VCPKG_OVERLAY_TRIPLETS="$VCPKG_ROOT/overlay/triplets"
export VCPKG_OVERLAY_PORTS="$VCPKG_ROOT/overlay/ios:$VCPKG_ROOT/overlay/osx:$VCPKG_ROOT/overlay/ports"
