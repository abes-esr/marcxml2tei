<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.tei-c.org/ns/1.0"
	xmlns:xml="http://www.w3.org/XML/1998/namespace"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xi="http://www.w3.org/2001/XInclude"
	xmlns:hal="http://hal.archives-ouvertes.fr/" exclude-result-prefixes="xs" version="1.0" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 http://api.archives-ouvertes.fr/documents/aofr-sword.xsd">
	<xsl:strip-space elements="*" />
	<xsl:output method="xml" indent="yes" />

	<!-- On redéfinit le comportement de codeLangue pour Oracle. -->
	<!-- Dans le contexte d'Oracle code langue ne fait rien.-->
	<!-- Il retourne les données qu'il reçoit en entrée, car les données sont déjà modifiées en amont par Oracle. -->
	<xsl:template name="codeLangue">
		<xsl:param name="code" />
		<xsl:value-of select="$code"/>
	</xsl:template>

	<xsl:template name="codeOai">
		<xsl:param name="code" />
		<xsl:if test="not(contains('0123456789', substring($code, 1, 1)))">
			<xsl:value-of select="$code"/>
		</xsl:if>
	</xsl:template>

	<!-- Importe le contenu de ./xslt/marcxml2tei-1.0.xsl sauf le prologue xslt, primaryLanguageCode et secondaryLanguageCode -->
	<xi:include href="../rameau/xslt/xslt.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[name() != 'xsl:output' and name() != 'xsl:strip-space'])"/>
	<xi:include href="../xslt/marcxml2tei-1.0.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[(name() != 'xsl:import' and name() != 'xsl:output' and name() != 'xsl:strip-space') and (@name != 'codeOai' and @name != 'codeLangue')])"/>
</xsl:stylesheet>
