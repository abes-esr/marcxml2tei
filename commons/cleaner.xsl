<!-- Cette feuille de style permet d'enlever de manière récursive les noeuds vides dans un fichier XML -->
<xsl:stylesheet xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:strip-space elements="*"/>
    <xsl:output method="xml" indent="yes"/>

    <!-- https://stackoverflow.com/questions/3678353/apply-xslt-transform-to-an-already-transformed-xml -->
    <!-- On applique un premier traitement XSL et on stock le résultat de la TEI générée dans la variable $tei -->
    <xsl:variable name="tei">
        <xsl:apply-templates/>
    </xsl:variable>

    <!-- On recréer un DOM à partir du contenu de la variable TEI et on lui applique les transformations postTreatment (suppression des noeuds vides)  -->
    <xsl:template match="/">
        <xsl:apply-templates select="ext:node-set($tei)/*" mode="postTreatment" />
    </xsl:template>

    <!--https://stackoverflow.com/questions/24776276/remove-empty-xml-elements-recursively-with-xslt-->
    <!-- Enlève de manière récursive les noeuds vides -->
    <xsl:template match="*[descendant::text() or descendant-or-self::*/@*[string()]]" mode="postTreatment"
        xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" mode="postTreatment" />
        </xsl:copy>
    </xsl:template>

    <!-- Enlève de manière récursive les noeuds vides -->
    <xsl:template match="@*[string()]" mode="postTreatment"
        xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xsl:copy/>
    </xsl:template>
</xsl:stylesheet>