#!/bin/sh
prefix=pkgsrc/eliteraspberries
cd ../..
tar=pkgsrc-eliteraspberries-$1.tar
rm -f $prefix/$tar $prefix/$tar.gz
tar \
    -v \
    -c \
    -f $prefix/$tar \
    --format pax \
    -X $prefix/.tarignore \
    pkgsrc/eliteraspberries/*
gzip $prefix/$tar
