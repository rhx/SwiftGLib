#!/bin/sh
#
. config.sh
exec swift build $CCFLAGS $LINKFLAGS "$@"
