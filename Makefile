convert: create-output-dir
	for i in marcxml_sample/*.xml; do saxon-xslt $$i xslt/marcxml2tei.xsl > output/$$(basename -- $$i).tei ; done

test: tests/*.xspec
	xspec tests/*.xspec

clear-test:
	rm -r -f tests/xspec/

create-output-dir:
	mkdir -p ./output

clear-output-dir:
	rm -r -f ./output

clean: clear-test clear-output-dir

# rebuilds the mapping xslt template with latest mapping data available on the repository (see mapping folder).
rebuild-mapping:
	@.script/mapping.sh

# builds an all-in-one file which embeds the mapping data and the cleaner
bundle.1.0: rebuild-mapping
	@.script/template.sh template/bundle.1.0.xsl

# builds an all-in-one file which embeds the mapping data and the cleaner
bundle.2.0: rebuild-mapping
	@.script/template.sh template/bundle.2.0.xsl

# builds an xslt compliant with Oracle
oracle:
	@.script/template.sh template/oracle.xsl
