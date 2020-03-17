#!/bin/sh
set -e
set -x
LOCALPATCHES="$(cd ../python && bmake show-var VARNAME=LOCALPATCHES)"
for V in 2.7.16 3.5.7; do
    X="$(echo ${V} | awk -F. '{print $1}')"
    Y="$(echo ${V} | awk -F. '{print $2}')"
    Z="$(echo ${V} | awk -F. '{print $3}')"
    mkdir -p ../../eliteraspberries/python${X}${Y}
    for f in DESCR PLIST; do
        test -f ../python${X}${Y}/${f} || cp ${f} ../python${X}${Y}/
    done
    for F in Makefile buildlink3.mk fix-suffixes.sh; do
        sed -e "s/{{X}}/${X}/g" \
            -e "s/{{Y}}/${Y}/g" \
            -e "s/{{Z}}/${Z}/g" \
        < ${F}.in \
        > ../../eliteraspberries/python${X}${Y}/${F}
    done
    (cd ${LOCALPATCHES}/eliteraspberries && ln -F -s python python${X}${Y})
done
