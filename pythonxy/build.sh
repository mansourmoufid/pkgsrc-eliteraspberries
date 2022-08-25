#!/bin/sh
set -e
set -x
LOCALPATCHES="$(cd ../python && bmake show-var VARNAME=LOCALPATCHES)"
for V in 2.7.18 3.5.10 3.6.15 3.7.12 3.8.13; do
    X="$(echo ${V} | awk -F. '{print $1}')"
    Y="$(echo ${V} | awk -F. '{print $2}')"
    Z="$(echo ${V} | awk -F. '{print $3}')"
    mkdir -p ../../eliteraspberries/python${X}${Y}
    for f in DESCR PLIST; do
        test -f ../python${X}${Y}/${f} || cp ${f} ../python${X}${Y}/
    done
    for F in Makefile buildlink3.mk fix-suffixes.sh plist.sh; do
        sed -e "s/{{X}}/${X}/g" \
            -e "s/{{Y}}/${Y}/g" \
            -e "s/{{Z}}/${Z}/g" \
        < ${F}.in \
        > ../../eliteraspberries/python${X}${Y}/${F}
    done
    test -d ${LOCALPATCHES} && (
        cd ${LOCALPATCHES}/eliteraspberries
        ln -F -s python python${X}${Y}
    )
done
