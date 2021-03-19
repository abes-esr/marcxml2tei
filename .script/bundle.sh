#!/usr/bin/env bash

function create_data_map() {
    saxon-xslt ./data/mapping_domainesTEL_et_oaiSets.xml ./utils/oaiset-map-generator.xsl > commons/mapping_domainesTEL_et_oaiSets.xsl
    saxon-xslt ./data/code_langues.xml ./utils/code-langues-map-generator.xsl > commons/code_langues.xsl
}

function bundle () {
    xmllint --xinclude xslt/marcxml2tei-1.0.xsl
}

create_data_map && bundle