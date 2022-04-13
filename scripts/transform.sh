#!/usr/bin/env bash

# ./transform.sh --xsl=xslt/xsl.xsl --xml=sample/*.xml --output-dir=output/

export SAXON_CP=/tmp/saxon/saxon9he.jar

for i in "$@"; do
    case $i in
        --xsl=*)
            XSL_FILE="${i#*=}"
            shift
        ;;
        --xml=*)
            XML_FILES="${i#*=}"
            shift
        ;;
        --output-dir=*)
            OUT_DIR="${i#*=}"
            shift
        ;;
        *)
            echo "Unknown option: ${i}"
            exit 1
        ;;
    esac
done

if [ -z "${XSL_FILE}" ] || [ -z "${XML_FILES}" ] || [ -z "${OUT_DIR}" ]; then
    echo "Usage: $0 --xsl=<xsl-file> --xml=<xml-files> --output-dir=<out-dir>"
    exit 1
fi

xsl_filename=$(basename "${XSL_FILE}" .xsl)
mkdir -p "${OUT_DIR}"

for i in ${XML_FILES}; do
    xml_filename=$(basename "${i}" .xml)
    output_filename="${xml_filename}-${xsl_filename}.xml"
    
    java -jar $SAXON_CP $i $XSL_FILE > ${OUT_DIR}/${output_filename};
done