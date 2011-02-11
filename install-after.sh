#!/bin/sh
#
# install-after.sh -- Custom installation
#
# The script will receive one argument: relative path to
# installation root directory. Script is called like:
#
#    $ install-after.sh .inst
#
# This script is run after [install] command.

Cmd()
{
    echo "$@"
    [ "$test" ] && return
    "$@"
}

Main()
{
    root=${1:-".inst"}

    if [ "$root"  ] && [ -d $root ]; then

        root=$(echo $root | sed 's,/$,,')  # Delete trailing slash
        docdir=$(cd $root/usr/share/doc/box*; pwd)
        exdir=$docdir/examples

	if [ -d $root/etc ] ; then
            Cmd install -m 644 -d $exdir
            Cmd mv $root/etc/boxes/boxes.conf $exdir
        fi
    fi
}

Main "$@"

# End of file
