#!/usr/bin/env bash

saxon-xslt ./mapping/mapping_domainesTEL_et_oaiSets.xml ./utils/oaiset-map-generator.xsl > commons/mapping_domainesTEL_et_oaiSets.xsl
saxon-xslt ./mapping/code_langues.xml ./utils/code-langues-map-generator.xsl > commons/code_langues.xsl