#!/bin/sh
#
# Wrapper around jazzy that uses pkg-config in config.sh
# to determine compiler and linker flags
#
. ./config.sh
rm -rf .docs.old
mv docs .docs.old 2>/dev/null
./package.sh --allow-writing-to-directory docs \
    generate-documentation --target $Mod --disable-indexing \
    --output-path docs \
    --transform-for-static-hosting \
    --hosting-base-path http://rhx.github.io/Swift$Mod/
