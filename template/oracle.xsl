<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:hal="http://hal.archives-ouvertes.fr/" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 http://api.archives-ouvertes.fr/documents/aofr-sword.xsd"
    xmlns:ext="http://exslt.org/common"
    xmlns:xi="http://www.w3.org/2001/XInclude">
    <xsl:strip-space elements="*" />
    <xsl:output method="xml" indent="yes" />

    <!-- On redéfinit le comportement de primaryLanguageCode : dans le contexte d'Oracle on récupère juste la valeur en 101$a (qui a été modifiée péalablement par Oracle) -->
	<xsl:variable name="primaryLanguageCode">
		<xsl:variable name="primaryLanguageCode639_2">
		  <xsl:choose>
			<xsl:when test="/record/datafield[@tag='101']/subfield[@code='a']">
			  <xsl:value-of select="/record/datafield[@tag='101']/subfield[@code='a']"/>
			</xsl:when>
			<xsl:otherwise>
			  <xsl:text>fr</xsl:text>
			</xsl:otherwise>
		  </xsl:choose>
		</xsl:variable>
		<!-- In Oracle context we return the original value which is modified beforehand by Oracle -->
		<xsl:value-of select="$primaryLanguageCode639_2"/>
	</xsl:variable>

    <!-- Récupération du code langue en 101$d ou en 541$z. Valeur par défaut = valeur du paramètre secondaryLanguage ou 'eng' -->
    <xsl:variable name="secondaryLanguageCode">
		<xsl:variable name="secondaryLanguageCode639_2">
		  <xsl:choose>
			<xsl:when test="/record/datafield[@tag='101']/subfield[@code='d'][2]">
			  <xsl:value-of select="/record/datafield[@tag='101']/subfield[@code='d'][2]"/>
			</xsl:when>
			<xsl:when test="/record/datafield[@tag = '541']/subfield[@code = 'z'][1]">
			  <xsl:value-of select="/record/datafield[@tag = '541']/subfield[@code = 'z']"/>
			</xsl:when>
			<xsl:otherwise>
			  <xsl:text>en</xsl:text>
			</xsl:otherwise>
		  </xsl:choose>
        </xsl:variable>
        <!-- In Oracle context we return the original value which is modified beforehand by Oracle -->
	<xsl:value-of select="$secondaryLanguageCode639_2"/>   
  </xsl:variable>

    <xsl:template name="codeOai">
        <xsl:param name="code" />

        <!-- In Oracle context we return the original value which is modified beforehand by Oracle -->
        <xsl:value-of select="$code"/>
    </xsl:template>

    <!-- Importe le contenu de ./xslt/marcxml2tei-1.0.xsl sauf le prologue xslt, primaryLanguageCode et secondaryLanguageCode -->
    <xi:include href="../xslt/marcxml2tei-1.0.xsl" xpointer="xmlns(xsl=http://www.w3.org/1999/XSL/Transform)xpointer(//xsl:stylesheet/*[(name() != 'xsl:import' and name() != 'xsl:output' and name() != 'xsl:strip-space') and (@name != 'primaryLanguageCode' and @name != 'secondaryLanguageCode' and @name != 'codeOai' and @name != 'codeLangue')])"/>
</xsl:stylesheet>
