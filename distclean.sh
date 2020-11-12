#!/bin/sh
#
# Remove Packages directory and generated files
#
. ./config.sh
./clean.sh
exec rm -rf Package.resolved Package.pins Packages .docs.old Sources/${Mod}/*-*.swift Sources/${Mod}/${Module}.swift ${Mod}.xcodeproj
