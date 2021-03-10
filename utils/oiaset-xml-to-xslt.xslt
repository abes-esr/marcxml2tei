<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns = "http://www.tei-c.org/ns/1.0"
    xmlns:ext="http://exslt.org/common"
    xmlns:xsl1="http://www.w3.org/1999/XSL/xsl1Transform">

    <xsl:strip-space elements="*" />

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />

    <xsl:template match="/">
        <xsl1:template name="typeAut">
            <xsl1:param name="code"/>
            <xsl1:variable name="rolemap">
                <xsl:for-each select="//SubjectStruct">            
                    <xsl:value-of select="concat(';', ./set/setSpec, '=', ./hal/code)"></xsl:value-of>
                </xsl:for-each>
            </xsl1:variable>
            <xsl1:value-of
            select="substring-before(substring-after($rolemap, concat(';', $code, '=')), ';')"/>

        </xsl1:template>
    </xsl:template>
</xsl:stylesheet> 