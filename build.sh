#/bin/sh
#
# build.sh -- Custom build steps
# Pass correct make(1) flags in order to compile the package.

echo "FIXME: sys/stat.h defines S_IFMT and S_IFDIR"

make GLOBALCONF=/etc/boxes/boxes.conf \
     BVERSION=1.3 \
     CFLAGS_ADDTL= \
     CFLAGS="-D_BSD_SOURCE -std=c11 -I. -Iregexp -W -Wall -O -DS_IFMT=0170000 -DS_IFDIR=0040000"

# End of file
