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