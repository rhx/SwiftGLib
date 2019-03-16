#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
VER=2.0
Mod=`grep name: Package.swift | head -n1 | cut -d'"' -f2`
Module=${Mod}-${VER}
module="`echo "${Module}" | tr '[:upper:]' '[:lower:]'`"
BUILD_DIR=`pwd`/.build
export PATH="${BUILD_DIR}/gir2swift/.build/release:${BUILD_DIR}/gir2swift/.build/debug:${PATH}"
export PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig:${PKG_CONFIG_PATH}
export LINKFLAGS="`pkg-config --libs $module gio-unix-2.0 | tr ' ' '\n' | sed -e 's/^/-Xlinker /' -e 's/-Wl,//' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`"
export CCFLAGS="`pkg-config --cflags $module gio-unix-2.0 | tr ' ' '\n' | sed -e 's/^/-Xcc /' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`"
