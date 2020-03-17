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
