#!/bin/sh
set -e
set -x
DESTDIR="$(bmake show-var VARNAME=DESTDIR)"
PREFIX="$(bmake show-var VARNAME=PREFIX)"
test -d ${DESTDIR}${PREFIX}
cd ${DESTDIR}${PREFIX}
test -d bin && (
    cd bin
    for f in 2to3 idle pydoc python; do
        for s in "" 2 2.7 -2 -2.7; do
            test -h ${f}${s} && rm ${f}${s}
        done
    done
    for f in 2to3; do
        test -f ${f} && mv ${f} ${f}-2
        test -f ${f}-2 && mv ${f}-2 ${f}-2.7
    done
    for f in idle pydoc python; do
        test -f ${f} && mv ${f} ${f}2
        test -f ${f}2 && mv ${f}2 ${f}2.7
    done
    for s in "" 2 2.7; do
        test -h python${s}-config && rm python${s}-config
    done
    test -f python-config && mv python-config python2-config
    test -f python2-config && \
        mv python2-config python2.7-config
) || true
test -d lib && (
    cd lib
    for ext in dylib so; do
        for s in 2 2.7; do
            test -h libpython${s}.${ext} && rm libpython${s}.${ext}
        done
        test -f libpython.${ext} && mv libpython.${ext} libpython2.${ext}
        test -f libpython2.${ext} && \
            mv libpython2.${ext} libpython2.7.${ext}
    done
) || true
test -d man/man1 && (
    cd man/man1
    for s in "" 2 2.7; do
        test -h python${s}.1 && rm python${s}.1
    done
    test -f python.1 && mv python.1 python2.1
    test -f python2.1 && mv python2.1 python2.7.1
) || true
