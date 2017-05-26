#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
Mod=GLib
Module=${Mod}-2.0
module="`echo "${Module}" | tr '[:upper:]' '[:lower:]'`"
BUILD_DIR=`pwd`/.build
export PATH="${BUILD_DIR}/gir2swift/.build/release:${BUILD_DIR}/gir2swift/.build/debug:${PATH}"
export LINKFLAGS="`pkg-config --libs $module gio-unix-2.0 | tr ' ' '\n' | sed -e 's/^/-Xlinker /' -e 's/-Wl,//' | tr '\n' ' '`"
export CCFLAGS="`pkg-config --cflags $module gio-unix-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `"
