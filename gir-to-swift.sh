#!/bin/bash
#
# Swift code wrapper generator for gobject-introspection (.gir) files.
# This needs an installed `gir2swift' executable (github.com/rhx/gir2swift)
# as well as awk.
#
. ./config.sh
./package.sh fetch
mkdir -p Sources
GOBJECT_LIBDIR="`pkg-config --libs-only-L gobject-introspection-1.0 2>/dev/null | tr ' ' '\n' | grep gobject-introspection | tail -n1 | cut -c3-`"
GOBJECT_DIR="`dirname "${GOBJECT_LIBDIR}"`"
for prefix in /usr /usr/local $GOBJECT_DIR $PREFIX ; do
	gir_dir=${prefix}/share/gir-1.0
	gir=${gir_dir}/${Module}.gir
	if [ -e "${gir}" ] ; then
		export GIR=${gir}
		export GIR_DIR=${gir_dir}
	fi
done
if [ ! -e "${GIR}" ] ; then
	echo "*** ${GIR} does not exist!"
	echo "Make sure libgirepository1.0-dev is installed"
	echo "and can be found in /usr /usr/local or by pkg-config!"
	exit 1
fi
if ! pushd Packages/gir2swift >/dev/null 2>&1 ; then
	pushd Packages >/dev/null
	git clone https://github.com/rhx/gir2swift.git
	cd gir2swift && ./build.sh
fi
export PATH=`pwd`/.build/debug:${PATH}
popd >/dev/null
exec gir2swift "${GIR}" | sed -f ${Module}.sed | awk -f ${Module}.awk > Sources/${Module}.swift
