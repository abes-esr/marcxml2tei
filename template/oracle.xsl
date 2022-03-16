<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.tei-c.org/ns/1.0"
	xmlns:xml="http://www.w3.org/XML/1998/namespace"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xi="http://www.w3.org/2001/XInclude"
	xmlns:hal="http://hal.archives-ouvertes.fr/" exclude-result-prefixes="xs" version="1.0" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 http://api.archives-ouvertes.fr/documents/aofr-sword.xsd">
	<xsl:strip-space elements="*" />
	<xsl:output method="xml" indent="yes" />

	<!-- On redéfinit le comportement de primaryLanguageCode : dans le contexte d'Oracle on récupère juste la valeur en 101$a (qui a été modifiée péalablement par Oracle) -->
    <xsl:variable name="mainTitleLang">
        <xsl:variable name="mainTitleLang639_2">
            <xsl:choose>
                <xsl:when test="count(/record/datafield[@tag='101']/subfield[@code='a']) = 1">
                    <xsl:value-of select="/record/datafield[@tag='101']/subfield[@code='a'][1]"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- Par défaut on considère que le document est en Français s'il y a plusieurs 101$a -->
                    <xsl:text>fre</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:call-template name="codeLangue">
            <xsl:with-param name="code" select="$mainTitleLang639_2"/>
        </xsl:call-template>
    </xsl:variable>

	<xsl:template name="codeOai">
		<xsl:param name="code" />
		<!-- ORACLE preprocessing plsql doesn't remove set data so we filter them -->
		<xsl:if test="not(contains('0123456789', substring($code, 1, 1)))">
			<xsl:value-of select="$code"/>
		</xsl:if>

	</xsl:template>

	<!-- Importe le contenu de ./xslt/marcxml2tei-1.0.xsl sauf le prologue xslt, primaryLanguageCode et secondaryLanguageCode -->
	<xi:include href="../xslt/marcxml2tei-1.0.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[(name() != 'xsl:import' and name() != 'xsl:output' and name() != 'xsl:strip-space') and (@name != 'primaryLanguageCode' and @name != 'secondaryLanguageCode' and @name != 'codeOai' and @name != 'codeLangue')])"/>
</xsl:stylesheet>
