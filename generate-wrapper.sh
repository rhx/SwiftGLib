#!/bin/bash
#
# Recursive swift code wrapper generator for gobject-introspection (.gir) files.
# This calls the non-recursive gir-to-swift.sh to do the heavy lifting.
#
. ./config.sh
./package.sh update
if ! pushd "$BUILD_DIR/gir2swift" >/dev/null 2>&1 ; then
	mkdir -p "$BUILD_DIR"
	pushd "$BUILD_DIR" >/dev/null
	git clone https://github.com/rhx/gir2swift.git
	cd gir2swift && ./build.sh
fi
export PATH=`pwd`/.build/debug:${PATH}
popd >/dev/null
. ./gir-to-swift.sh "$@"
