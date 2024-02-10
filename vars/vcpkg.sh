rootdir=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)

if [ -z "$VCPKG_ROOT" ]; then
  export VCPKG_ROOT="$rootdir/vcpkg"
fi
