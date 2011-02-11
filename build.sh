#/bin/sh
#
# build.sh -- Custom build steps
# Pass correct make(1) flags in order to compile the package.

echo "FIXME: sys/stat.h defines S_IFMT and S_IFDIR"

make GLOBALCONF=/etc/boxes/boxes.conf \
     BVERSION=1.0.1a \
     CFLAGS_ADDTL= \
     CFLAGS="-ansi -I. -Iregexp -W -Wall -O -DS_IFMT=0170000 -DS_IFDIR=0040000"

# End of file
