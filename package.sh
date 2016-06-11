#!/bin/sh
#
. ./config.sh
exec swift package $CCFLAGS $LINKFLAGS "$@"
