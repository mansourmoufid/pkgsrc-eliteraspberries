#!/bin/sh
set -e
set -x
DESTDIR="$(bmake show-var VARNAME=DESTDIR)"
OPSYS="$(bmake show-var VARNAME=OPSYS)"
PREFIX="$(bmake show-var VARNAME=PREFIX)"
test -d ${DESTDIR}${PREFIX} && \
find "${DESTDIR}${PRERIX}" -type f -o -type l \
| sed -e "s,^${DESTDIR}${PREFIX}[/]*,," \
    -e 's,3[.]8[.]13,${X}.${Y}.${Z},g' \
    -e 's,3[.]8,${X}.${Y},g' \
    -e 's,python3,python${X},g' \
    -e 's,pydoc3,pydoc${X},g' \
    -e 's,idle3,idle${X},g' \
    -e 's,-38,-${X}${Y},g' \
    -e '/.pyc$/d' \
    -e '/.pyo$/d' \
    -e '/.whl$/d' \
| sort \
> PLIST.${OPSYS}
test -f PLIST.Darwin || echo > PLIST.Darwin
test -f PLIST.Linux || echo > PLIST.Linux
cat PLIST PLIST.Darwin | sort | uniq > PLIST.Darwin.orig
cat PLIST PLIST.Linux | sort | uniq > PLIST.Linux.orig
(
    echo '@comment $NetBSD$'
    comm -12 PLIST.Darwin.orig PLIST.Linux.orig
) | sort | uniq > PLIST
(
    echo '@comment $NetBSD$'
    comm -23 PLIST.Darwin.orig PLIST.Linux.orig
) | sort | uniq > PLIST.Darwin
(
    echo '@comment $NetBSD$'
    comm -13 PLIST.Darwin.orig PLIST.Linux.orig
) | sort | uniq > PLIST.Linux
rm PLIST.Darwin.orig
rm PLIST.Linux.orig
