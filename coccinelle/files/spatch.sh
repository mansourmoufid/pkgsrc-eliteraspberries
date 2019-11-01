#!/bin/sh
SYSTEM="$(uname -s)"
PREFIX="$(cd $(dirname $0) && pwd)"
case "${SYSTEM}" in
    "Darwin")
        export DYLD_LIBRARY_PATH="${PREFIX}/../lib:${DYLD_LIBRARY_PATH}"
        ;;
    *)
        export LD_LIBRARY_PATH="${PREFIX}/../lib:${LD_LIBRARY_PATH}"
        ;;
esac
exec ${SPATCH} $@
