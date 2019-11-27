#!/bin/sh
#
# Remove the .build folder
#
. ./config.sh
exec rm -rf "$BUILD_DIR"
