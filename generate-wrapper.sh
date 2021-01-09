#!/bin/bash
#
# Recursive swift code wrapper generator for gobject-introspection (.gir) files.
# This calls the non-recursive gir-to-swift.sh to do the heavy lifting.
#
. ./config.sh
./package.sh update
if [ ! -x "${GIR2SWIFT_PATH}/gir2swift" ] &&
   ! pushd "$BUILD_DIR/checkouts/gir2swift" >/dev/null 2>&1 ; then
	mkdir -p "$BUILD_DIR/checkouts"
	pushd "$BUILD_DIR/checkouts" >/dev/null
	git clone https://github.com/rhx/gir2swift.git
	cd gir2swift && ./build.sh
fi
export PATH="$PWD/.build/release:${PATH}"
popd >/dev/null 2>&1
. ./gir-to-swift.sh "$@"
