#!/bin/bash
#
# Recursive swift code wrapper generator for gobject-introspection (.gir) files.
# This calls the non-recursive gir-to-swift.sh to do the heavy lifting.
#
. ./config.sh
./package.sh update
if [ ! -x "${GIR2SWIFT_PATH}/gir2swift" -a \
     ! -e "$BUILD_DIR/checkouts/gir2swift" ] ; then
	mkdir -p "$BUILD_DIR/checkouts" 2>/dev/null
	pushd "$BUILD_DIR/checkouts" >/dev/null
	git clone https://github.com/rhx/gir2swift.git
	popd >/dev/null 2>&1
fi
if [ ! -x "${GIR2SWIFT_PATH}/gir2swift" ] &&
     ! -e "$BUILD_DIR/checkouts/gir2swift/.build/release/gir2swift" >/dev/null 2>&1 ; then
	pushd "$BUILD_DIR/checkouts/gir2swift" >/dev/null
	./build.sh
fi
export PATH="$PWD/.build/release:${PATH}"
popd >/dev/null 2>&1
. ./gir-to-swift.sh "$@"
