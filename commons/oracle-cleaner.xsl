<!-- Cette feuille de style permet d'enlever de manière récursive les noeuds vides dans un fichier XML -->
<xsl:stylesheet xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:strip-space elements="*" />
    <xsl:output method="xml" indent="yes" />

    <!--https://stackoverflow.com/questions/24776276/remove-empty-xml-elements-recursively-with-xslt-->
    <!-- Enlève de manière récursive les noeuds vides -->
    <xsl:template match="*[descendant::text() or descendant-or-self::*/@*[string()]]"
        xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" />
        </xsl:copy>
    </xsl:template>

    <!-- Enlève de manière récursive les noeuds vides -->
    <xsl:template match="@*[string()]"
        xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xsl:copy/>
    </xsl:template>
</xsl:stylesheet>