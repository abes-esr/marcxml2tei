#!/usr/bin/env bash

export SAXON_CP=/tmp/saxon/saxon9he.jar

for xspecfile in tests/*.xspec; do
    if /tmp/xspec/bin/xspec.sh -e "${xspecfile}" &> result.log; then
        echo "OK: ${xspecfile}"
    else
        echo "FAILED: ${xspecfile}"
        echo "---------- result.log"
        cat result.log
        echo "----------"
        exit 1
    fi
done