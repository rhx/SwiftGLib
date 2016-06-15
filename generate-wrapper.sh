#!/bin/sh
#
# Recursive swift code wrapper generator for gobject-introspection (.gir) files.
# This calls the non-recursive gir-to-swift.sh to do the heavy lifting.
#
. ./config.sh
./package.sh fetch
. ./gir-to-swift.sh "$@"
