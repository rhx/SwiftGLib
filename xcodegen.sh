#!/bin/sh
#
. config.sh
./package.sh generate-xcodeproj "$@"
( cd GLib.xcodeproj/Configs						&& \
  mv Project.xcconfig Project.xcconfig.in				&& \
  sed -e 's/ -I ?[^ ]*//g' < Project.xcconfig.in > Project.xcconfig	&& \
  grep 'OTHER_CFLAGS' < Project.xcconfig.in | sed 's/-I */-I/g'		|  \
    tr ' ' '\n' | grep -- -I | tr '\n' ' '				|  \
    sed -e 's/^/HEADER_SEARCH_PATHS = /' -e 's/ -I/ /g' >> Project.xcconfig
)
( cd GLib.xcodeproj							&& \
  mv project.pbxproj project.pbxproj.in					&& \
  sed < project.pbxproj.in > project.pbxproj				   \
    -e "s/\(HEADER_SEARCH_PATHS[^A-Za-z][^']*'[^']*\)'/\\1 \\\$(inherited)'/"
)
