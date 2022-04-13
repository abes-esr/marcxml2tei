#!/usr/bin/env bash

mkdir -p commons
saxon-xslt ./mapping/mapping_tel_domains_oai_sets.xml ./utils/oaiset-map-generator.xsl > commons/mapping_tel_domains_oai_sets.xsl
saxon-xslt ./mapping/code_langues.xml ./utils/code-langues-map-generator.xsl > commons/code_langues.xsl