#!/bin/sh
#
# Remove Packages directory and generated files
#
. ./config.sh
./clean.sh
exec rm -rf Package.pins Packages Sources/*-*.swift Sources/${Module}.swift ${Mod}.xcodeproj
