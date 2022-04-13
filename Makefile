validate: transform
	scripts/validate.sh --xsd=schema/AOfr.xsd --xml=output/*.xml
	
transform: create-output-dir bundle oracle
	scripts/transform.sh --xsl=bundle/marcxml2tei-1.0.xsl --xml=sample/*.xml --output-dir=output
	scripts/transform.sh --xsl=bundle/marcxml2tei-oracle.xsl --xml=sample/*.xml --output-dir=output

install-saxon:
	./scripts/install-saxon.sh

install-xspec: install-saxon
	./scripts/install-xspec.sh

tests: tests/*.xspec bundle oracle
	./scripts/tests.sh tests/*.xspec bundle

full-tests: tests validate

# rebuilds the mapping xslt template with latest mapping data available on the repository (see mapping folder).
build-mapping:
	scripts/mapping.sh

# builds a all-in-one file which embeds the mapping data and the cleaner
bundle: build-mapping
	mkdir -p bundle
	scripts/template.sh template/bundle.xsl | sed -r 's! xmlns:xi="http://www.w3.org/2001/XInclude"!!g' > bundle/marcxml2tei-1.0.xsl

# builds a xslt compliant with Oracle
oracle:
	mkdir -p bundle
	scripts/template.sh template/oracle.xsl | sed -r 's! xmlns:xi="http://www.w3.org/2001/XInclude"! xmlns:xml="http://www.w3.org/XML/1998/namespace"!g' > bundle/marcxml2tei-oracle.xsl

clean-test:
	rm -r -f tests/xspec/

create-output-dir:
	mkdir -p ./output

clean-output-dir:
	rm -r -f ./output

clean-bundle-dir:
	rm -r -f ./bundle

clean-commons-dir:
	rm -r -f ./commons

clean: clean-test clean-output-dir clean-bundle-dir clean-commons-dir