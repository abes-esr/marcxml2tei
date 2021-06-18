validation: convert
	@.script/validate.sh output/*.tei
	
convert: create-output-dir
	@for xsl in xslt/*.xsl;	\
	do	\
		for i in marcxml_sample/*.xml;	\
		do	\
			java -jar $$SAXON_CP $$i $$xsl > output/$$(basename -- $$i ".xml")-$$(basename -- $$xsl ".xsl").tei;	\
		done;	\
	done;

test: tests/*.xspec
	@for i in tests/*.xspec; do xspec.sh $$i; done

clear-test:
	@rm -r -f tests/xspec/

create-output-dir:
	@mkdir -p ./output

clear-output-dir:
	@rm -r -f ./output

clean: clear-test clear-output-dir

# rebuilds the mapping xslt template with latest mapping data available on the repository (see mapping folder).
rebuild-mapping:
	@.script/mapping.sh

# builds an all-in-one file which embeds the mapping data and the cleaner
bundle.1.0: rebuild-mapping
	@.script/template.sh template/bundle.1.0.xsl | sed -r 's! xmlns:xi="http://www.w3.org/2001/XInclude"!!g'

# builds an all-in-one file which embeds the mapping data and the cleaner
bundle.2.0: rebuild-mapping
	@.script/template.sh template/bundle.2.0.xsl | sed -r 's! xmlns:xi="http://www.w3.org/2001/XInclude"!!g'

# builds an xslt compliant with Oracle
oracle:
	@.script/template.sh template/oracle.xsl | sed -r 's! xmlns:xi="http://www.w3.org/2001/XInclude"! xmlns:xml="http://www.w3.org/XML/1998/namespace"!g'
