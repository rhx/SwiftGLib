#!/bin/bash
#
# Swift code wrapper generator for gobject-introspection (.gir) files.
# This needs an installed `gir2swift' executable (github.com/rhx/gir2swift)
# as well as awk.
#
. ./config.sh
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
gir2swift -o Sources/${Mod} -s -m ${Module}.module "${GIR}"
for src in Sources/${Mod}/*-*.swift ; do
	sed -f ${Module}.sed < ${src} | awk -f ${Module}.awk > ${src}.out
	mv ${src}.out ${src}
	for ver in 2.62.0 2.62.1 2.62.3 ; do
		if pkg-config --exact-version=$ver glib-2.0 ; then
			sed -f ${Module}-$ver.sed < ${src} |		\
			awk -f ${Module}-$ver.awk > ${src}.out
			mv ${src}.out ${src}
		fi
	done
done
touch Sources/${Mod}/${Module}.swift
