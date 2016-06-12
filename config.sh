#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
Mod=GLib
Module=${Mod}-2.0
module="`echo "${Module}" | tr '[:upper:]' '[:lower:]'`"
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
export LINKFLAGS="`pkg-config --libs $module gio-unix-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`"
export CCFLAGS="`pkg-config --cflags $module gio-unix-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `"
