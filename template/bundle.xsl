<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:hal="http://hal.archives-ouvertes.fr/" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 http://api.archives-ouvertes.fr/documents/aofr-sword.xsd"
    xmlns:xi="http://www.w3.org/2001/XInclude"
    xmlns:ext="http://exslt.org/common">
    <xsl:strip-space elements="*" />
    <xsl:output method="xml" indent="yes" />

    <xi:include href="../commons/mapping_tel_domains_oai_sets.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[name() != 'xsl:output' and name() != 'xsl:strip-space'])"/>
    <xi:include href="../commons/code_langues.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[name() != 'xsl:output' and name() != 'xsl:strip-space'])"/>
    <xi:include href="../rameau/xslt/xslt.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[name() != 'xsl:output' and name() != 'xsl:strip-space'])"/>
    <xi:include href="../xslt/marcxml2tei-1.0.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[(name() != 'xsl:import' and name() != 'xsl:output' and name() != 'xsl:strip-space') or (@name != 'codeOai' and @name != 'codeLangue')])"/>
</xsl:stylesheet>
