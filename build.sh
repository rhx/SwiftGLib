#!/bin/bash
#
MODULE=GLib-2.0
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
GOBJECT_LIBDIR=`pkg-config --libs-only-L gobject-introspection-1.0 | tr ' ' '\n' | grep gobject-introspection | tail -n1 | cut -c3-`
GOBJECT_DIR=`dirname "${GOBJECT_LIBDIR}"`
GIR_DIR=${GOBJECT_DIR}/share/gir-1.0
GIR=${GIR_DIR}/${MODULE}.gir
if [ ! -e "${GIR}" ] ; then
	echo "*** ${GIR} does not exist!"
	echo "Make sure gobject-introspection is installed"
	echo "and can be found by pkg-config!"
	exit 1
fi
LINKFLAGS=`pkg-config --libs glib-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags glib-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
gir2swift "${GIR}" > Sources/${MODULE}.swift
swift build $CCFLAGS $LINKFLAGS
