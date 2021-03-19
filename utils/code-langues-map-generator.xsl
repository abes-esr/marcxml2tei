<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:axsl="http://www.w3.org/1999/XSL/TransformAlias">
    <xsl:strip-space elements="*" />
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />

    <xsl:namespace-alias stylesheet-prefix="axsl" result-prefix="xsl"/>

    <xsl:template match="/">
        <axsl:template name="codeLangue">
            <axsl:param name="code" />
            <axsl:variable name="var">
                <xsl:for-each select="//languages/language">
                    <xsl:if test="./ISO_639_1 != ''">
                        <xsl:value-of select="concat(';', ./ISO_639_2, '=', ./ISO_639_1)"></xsl:value-of>
                    </xsl:if>
                </xsl:for-each>
            </axsl:variable>
            <axsl:value-of select="substring-before(substring-after($var, concat(';', $code, '=')), ';')" />
        </axsl:template>
    </xsl:template>
</xsl:stylesheet>
