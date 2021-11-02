#!/bin/sh
#
# Configuration for the module to compile, the Swift toolchain, and
# the compiler and linker flags to use.
#
VER=2.0
JAZZY_VER=2.70.1
Mod=`grep name: Package.swift | head -n1 | cut -d'"' -f2`
Module=${Mod}-${VER}
module="`echo "${Module}" | tr '[:upper:]' '[:lower:]'`"
if [ -z "$BUILD_DIR" ]; then
  if `pwd -P | grep -q Dropbox` ; then
    export BUILD_DIR="/tmp/.build-$Module"
  else
    export BUILD_DIR="$PWD/.build"
  fi
fi
export PATH="${GIR2SWIFT_PATH}:${BUILD_DIR}/checkouts/gir2swift/.build/release:${BUILD_DIR}/checkouts/gir2swift/.build/debug:${PATH}:$PWD/.build/checkouts/gir2swift/.build/release:$PWD/.build/checkouts/gir2swift/.build/debug:${PATH}:/usr/local/opt/ruby/bin:`echo /usr/local/lib/ruby/gems/*/bin | tr ' ' '\n' | tail -n1`:${PATH}:`echo /var/lib/gems/*/gems/jazzy-*/bin/ | tr ' ' '\n' | tail -n1`:/usr/local/bin"
export PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig:${PKG_CONFIG_PATH}
export LINKFLAGS="`pkg-config --libs $module gio-unix-2.0 | tr ' ' '\n' | sed -e 's/^/-Xlinker /' -e 's/-Wl,//' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`"
export CCFLAGS="`pkg-config --cflags $module gio-unix-2.0 | tr ' ' '\n' | sed -e 's/^/-Xcc /' | tr '\n' ' ' | sed -e 's/-Xcc[ 	]*-Xlinker/-Xlinker/g' -e 's/-Xcc *$//' -e 's/-Xlinker *$//'`"
JAZZY_B=`echo $CCFLAGS $LINKFLAGS | sed 's/  */,/g'`
