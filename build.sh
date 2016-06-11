#!/bin/sh
#
MODULE=GLib-2.0
module=`echo "${MODULE}" | tr '[:upper:]' '[:lower:]'`
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
LINKFLAGS=`pkg-config --libs $module gio-unix-2.0 | tr ' ' '\n' | sed 's/^/-Xlinker /' | tr '\n' ' '`
CCFLAGS=`pkg-config --cflags $module gio-unix-2.0 | tr ' ' '\n' | sed 's/^/-Xcc /' | tr '\n' ' ' `
exec swift build $CCFLAGS $LINKFLAGS "$@"
