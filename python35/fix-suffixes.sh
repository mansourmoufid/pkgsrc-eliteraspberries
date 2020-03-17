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
