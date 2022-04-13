#!/usr/bin/env bash

# ./validate.sh --xsd=xsd/schema.xsd --xml=output/*.xml

for i in "$@"; do
    case $i in
        --xsd=*)
            XSD_FILE="${i#*=}"
            shift
        ;;
        --xml=*)
            XML_FILES="${i#*=}"
            shift
        ;;
        *)
            echo "Unknown option: ${i}"
            exit 1
        ;;
    esac
done

if [ -z "${XSD_FILE}" ] || [ -z "${XML_FILES}" ]; then
    echo "Usage: $0 --xsd=<xsd-file> --xml=<xml-files>"
    exit 1
fi

for i in "${XML_FILES}"; do
    for j in $i; do
        (xmllint --schema $XSD_FILE "$j" &> /dev/null && echo "VALIDATION OK ${j}") || (echo "FAILED TO VALIDATE ${j}" && exit 1)
    done
done