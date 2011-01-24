#! /bin/sh

# Copyright (C) 2011 Ian Zimmerman <itz@buug.org>

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the conditions spelled out in
# the file LICENSE are met.

set -e
set -o noclobber

eqd=~/.aectl
pidfile=$eqd/.eq.pid

rm_pidfile()
{
    rm -f $pidfile
}

mkdir -p $eqd
chmod 775 $eqd

echo $$ > $pidfile
trap rm_pidfile INT TERM HUP 0

set +e

while true ; do
    alsamixer -D equal "$@" 
    exstat=$?
    if [ $exstat -eq 0 ] ; then break ; fi
done
