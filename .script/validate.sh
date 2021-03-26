#!/usr/bin/env bash

# Checks if all generated files validate against the schema

for i in "$@"; do
    (xmllint --schema schema/AOfr.xsd "$i" &> /dev/null && echo "OK ${i}") || (echo "KO ${i}" && exit 1)
done