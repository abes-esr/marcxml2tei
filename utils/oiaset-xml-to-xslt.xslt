<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:ext="http://exslt.org/common"
    xmlns:xsl1="http://exslt.orgs/common">

    <xsl:strip-space elements="*" />
    <xsl:output method="xml" indent="yes" />

    <xsl:template match="/ListSet">
            
            <xsl:variable name="dict" select="concat(';', //SubjectStruct/set/setSpect, '=', //SubjectStruct/hal/code)"/>
    
    
            <xsl1:template name="typeAut"><xsl1:param name="code"/><xsl1:variable name="rolemap">
                <xsl:for-each select="$dict">
                    <xsl:value-of select="$dict"/>
                </xsl:for-each>
            </xsl1:variable><xsl1:value-of select="substring-before(substring-after($rolemap, concat(\';\', $code, \'=\')), \';\')"/></xsl1:template>
            
        

        

    </xsl:template>


    <!-- 
<xsl:template name="typeAut">
        <xsl:param name="code"/>
        <xsl:variable name="rolemap"
            >;a=personne;b=collectivité/congrès;c=nom&#x20;géographique;d=marque;e=famille;f=titre;
            h=auteur/titre;j=sujet;l=forme/genre</xsl:variable>
        <xsl:value-of
            select="substring-before(substring-after($rolemap, concat(';', $code, '=')), ';')"/>
    </xsl:template>
</xsl:stylesheet> -->
</xsl:stylesheet> 