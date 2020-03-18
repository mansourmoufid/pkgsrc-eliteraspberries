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
        for s in "" 3 3.5 -3 -3.5; do
            test -h ${f}${s} && rm ${f}${s}
        done
    done
    for f in 2to3; do
        test -f ${f} && mv ${f} ${f}-3
        test -f ${f}-3 && mv ${f}-3 ${f}-3.5
    done
    for f in idle pydoc python; do
        test -f ${f} && mv ${f} ${f}3
        test -f ${f}3 && mv ${f}3 ${f}3.5
    done
    for s in "" 3 3.5; do
        test -h python${s}-config && rm python${s}-config
    done
    test -f python-config && mv python-config python3-config
    test -f python3-config && \
        mv python3-config python3.5-config
) || true
test -d lib && (
    cd lib
    for ext in dylib so; do
        for s in 3 3.5; do
            test -h libpython${s}.${ext} && rm libpython${s}.${ext}
        done
        test -f libpython.${ext} && mv libpython.${ext} libpython3.${ext}
        test -f libpython3.${ext} && \
            mv libpython3.${ext} libpython3.5.${ext}
    done
) || true
test -d man/man1 && (
    cd man/man1
    for s in "" 3 3.5; do
        test -h python${s}.1 && rm python${s}.1
    done
    test -f python.1 && mv python.1 python3.1
    test -f python3.1 && mv python3.1 python3.5.1
) || true
