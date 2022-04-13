<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:hal="http://hal.archives-ouvertes.fr/" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 http://api.archives-ouvertes.fr/documents/aofr-sword.xsd"
    xmlns:ext="http://exslt.org/common">
    <xsl:strip-space elements="*" />
    <xsl:output method="xml" indent="yes" />

    <!-- Liste des codes diplôme : https://api.archives-ouvertes.fr/ref/metadataList/?q=metaName_s:dumas_degreeType&rows=70 -->
    <xsl:param name="degreeCode" select="'23'" />
    <!-- Lien vers le fichier PDF. Peut prendre la forme d'un lien ftp -->
    <xsl:param name="fileLocation" select="''" />

    <xsl:variable name="IdRefBaseUrl" select="'https://www.idref.fr/'" />

    <xsl:template name="tei" match="record">
        <TEI>
            <text>
                <body>
                    <listBibl>
                        <biblFull>
                            <xsl:call-template name="editionStmt" />
                            <xsl:call-template name="notesStmt" />
                            <sourceDesc>
                                <biblStruct>
                                    <xsl:call-template name="analytic" />
                                    <xsl:call-template name="monogr" />
                                </biblStruct>
                            </sourceDesc>
                            <xsl:call-template name="profileDesc" />
                        </biblFull>
                    </listBibl>
                </body>
            </text>
        </TEI>
    </xsl:template>

    <xsl:template name="editionStmt">
        <editionStmt>
            <edition>
                <date type="whenWritten">
                    <xsl:value-of select="datafield[@tag = '328']/subfield[@code = 'd']" />
                </date>
                <xsl:if test="$fileLocation">
                    <ref type="file" subtype="author" n="1" target="{$fileLocation}">
                        <!-- <xsl:if test="$embargoDate">
                            <date notBefore="{$embargoDate}" />
                        </xsl:if>-->
                    </ref>
                </xsl:if>
            </edition>
        </editionStmt>
    </xsl:template>

    <xsl:template name="notesStmt">
        <notesStmt>
            <note type="audience" n="3" />
            <!--<note type="degree" n="{$degreeCode}" />-->
        </notesStmt>
    </xsl:template>

    <xsl:template name="analytic">
        <analytic>
            <xsl:call-template name="title" />
            <xsl:call-template name="author" />
        </analytic>
    </xsl:template>

    <xsl:template name="title">
        <xsl:variable name="mainTitleLang">
            <xsl:variable name="mainTitleLang639_2">
                <xsl:choose>
                    <xsl:when test="count(/record/datafield[@tag='101']/subfield[@code='a'])=1">
                        <xsl:value-of select="/record/datafield[@tag='101']//subfield[@code='a'][1]"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>fr</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
    
            <xsl:call-template name="codeLangue">
                <xsl:with-param name="code" select="$mainTitleLang639_2"/>
            </xsl:call-template>
        </xsl:variable>

        <title xml:lang='{$mainTitleLang}'>
            <xsl:call-template name="joinTitleElements">
                <xsl:with-param name="titles" select="datafield[@tag = '200']/subfield[@code = 'a']" />
                <xsl:with-param name="subtitles" select="datafield[@tag = '200']/subfield[@code = 'e']" />
            </xsl:call-template>
        </title>

        <xsl:for-each select="datafield[@tag = '541']">
            <xsl:if test="./subfield[@code = 'a' or @code = 'e']">
                <xsl:variable name="titleLang">
                    <xsl:call-template name="codeLangue">
                        <xsl:with-param name="code" select="./subfield[@code = 'z']"/>
                    </xsl:call-template>
                </xsl:variable>

                <title xml:lang="{$titleLang}">
                    <xsl:call-template name="joinTitleElements">
                        <xsl:with-param name="titles" select="./subfield[@code = 'a']"/>
                        <xsl:with-param name="subtitles" select="./subfield[@code = 'e']" />
                    </xsl:call-template>
                </title>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="author">
        <!-- for-each is used to sets the current node context -->
        <xsl:for-each select="datafield[@tag = '700'][subfield[@code = '4'] = '070']">
            <author role="aut">
                <persName>
                    <forename type="first">
                        <xsl:value-of select="subfield[@code = 'b']" />
                    </forename>
                    <surname>
                        <xsl:value-of select="subfield[@code = 'a']" />
                    </surname>
                </persName>
                <xsl:if test="subfield[@code = '3']">
                    <idno type="IdRef">
                        <xsl:value-of select="concat($IdRefBaseUrl, subfield[@code = '3'])" />
                    </idno>
                </xsl:if>
            </author>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="monogr">
        <monogr>
            <!-- <settlement>
                <xsl:value-of select="datafield[@tag = '711' and subfield[@code = '4'] = '295' ]/subfield[@code = 'c']" />
            </settlement> -->
            <imprint>
                <xsl:if test="(datafield[@tag = '307']/subfield[@code = ('a') and contains(., 'impression du document génère')])[1]">
                    <biblScope unit="pp">
                        <!-- suppression de la chaine de caractères : "L'impression du document génère"  -->
                        <xsl:value-of select="translate(translate(substring ((datafield[@tag = '307']/subfield[@code = ('a') and contains(., 'impression du document génère')])[1], 33), 'p. ', ''), translate(.,'0123456789',''), '')"/>
                    </biblScope>
                </xsl:if>
                <date type="dateDefended">
                    <xsl:call-template name="formatDate">
                        <xsl:with-param name="date" select="(datafield[@tag = '328']/subfield[@code = ('d')])[1]" />
                    </xsl:call-template>
                </date>
            </imprint>
            <xsl:if test="datafield[@tag = '711'][subfield[@code = '4'] = '295']">
                <authority type="institution">
                    <xsl:value-of select="datafield[@tag = '711']/subfield[@code = 'a']" />
                </authority>
            </xsl:if>
            <xsl:for-each select="datafield[@tag='701'][subfield[@code='4']/text()='727']">
                <authority type="supervisor">
                    <xsl:value-of select="normalize-space(concat(subfield[@code = 'b'], ' ', subfield[@code = 'a']))" />
                </authority>
            </xsl:for-each>
            
            <xsl:call-template name="jury"/>
        </monogr>
    </xsl:template>

    <xsl:template name="profileDesc">
        <profileDesc>
            <xsl:variable name="valLangue102">
                <xsl:value-of select="translate(datafield[@tag = '102']/subfield[@code = 'a'], 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz')" />
            </xsl:variable>

            <xsl:if test="$valLangue102 != null and $valLangue102 != ''">
                <langUsage>
                    <language ident="{$valLangue102}" />
                </langUsage>
            </xsl:if>

            <textClass>
                <xsl:call-template name="keywords" />
                <xsl:for-each select="datafield[@tag = '686'][subfield[@code = '2'] = 'TEF']/subfield[@code = 'a' or @code = 'HALDOMAIN']">
                    <xsl:variable name="oai">
                        <xsl:call-template name="codeOai">
                            <xsl:with-param name="code" select="normalize-space(text())"/>
                        </xsl:call-template>
                    </xsl:variable>

                    <xsl:if test="$oai != ''">
                        <classCode scheme="halDomain" n="{$oai}" />
                    </xsl:if>
                </xsl:for-each>

                <classCode scheme="halTypology" n="MEM" />
            </textClass>
            <xsl:call-template name="abstract" />
        </profileDesc>
    </xsl:template>

    <xsl:template name="keywords">
        <xsl:variable name="keywords" select="(datafield[@tag = '610' or @tag = '606' or @tag = '607']/subfield[@code = 'a'])[not(preceding::datafield[@tag = '610' or @tag = '606' or @tag = '607']/subfield[@code = 'a']/. = .)]"/>
        <xsl:if test="$keywords">
            <keywords scheme="author">
                <!-- deduplicate keywords-->
                <xsl:for-each select="$keywords">
                    <term xml:lang="fr">
                        <xsl:value-of select="." />
                    </term>
                </xsl:for-each>
            </keywords>
        </xsl:if>
    </xsl:template>

    <xsl:template name="abstract"> 
        <xsl:for-each select="datafield[@tag = '330']/subfield[@code = 'a']">
            <xsl:variable name="abstractIndex" select="position()"/>
            <xsl:variable name="abstractLang">
                <xsl:call-template name="codeLangue">
                    <xsl:with-param name="code" select="//datafield[@tag='101']/subfield[@code='d'][$abstractIndex]"/>
                </xsl:call-template>
            </xsl:variable>
            <abstract xml:lang="{$abstractLang}">
                <xsl:value-of select="." />
            </abstract>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="president_jury">
        <xsl:for-each select="datafield[@tag='701'][subfield[@code='4']/text()='956']">
            <xsl:call-template name="format_jury_member">
                <xsl:with-param name="jury_member"><xsl:value-of select="."/></xsl:with-param>
                <xsl:with-param name="role">Président</xsl:with-param>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="rapporteurs_jury">
        <xsl:for-each select="datafield[@tag='701'][subfield[@code='4']/text()='958']">
            <xsl:call-template name="format_jury_member">
                <xsl:with-param name="jury_member"><xsl:value-of select="."/></xsl:with-param>
                <xsl:with-param name="role">Rapporteur</xsl:with-param>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="membres_jury">
        <xsl:for-each select="datafield[@tag='701'][subfield[@code='4']/text()='555']">
            <xsl:call-template name="format_jury_member">
                <xsl:with-param name="jury_member"><xsl:value-of select="."/></xsl:with-param>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>
        
    <xsl:template name="format_jury_member">
        <xsl:param name="jury_member"/>
        <xsl:param name="role"/>
        
        <xsl:variable name="prenom_nom" select="concat(subfield[@code='b'], ' ', subfield[@code='a'])"/>
        <xsl:variable name="formated_role">
            <xsl:if test="$role">[<xsl:value-of select="$role"/>]</xsl:if>
        </xsl:variable>
        
        <xsl:if test="$prenom_nom">
            <authority type="jury">
                <xsl:value-of select="normalize-space(concat($prenom_nom, ' ', $formated_role))"/>
            </authority>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="jury">
        <xsl:call-template name="president_jury"/>
        <xsl:call-template name="rapporteurs_jury"/>
        <xsl:call-template name="membres_jury"/>
    </xsl:template>

    <!-- Joint le titre et les sous-titres selon la syntaxe suivante : `Titre : Sous titre 1. Sous titre 2` -->
    <xsl:template name="joinTitleElements">
        <xsl:param name="titles" />
        <xsl:param name="subtitles" />

        <!-- Joint les titres par ; -->
        <xsl:for-each select="$titles">
            <xsl:if test="position() > 1">
                <xsl:text>&#x20;;&#x20;</xsl:text>
            </xsl:if>

            <xsl:call-template name="removeTrailingPunctuation">
                <xsl:with-param name="input" select="."/>
            </xsl:call-template>
        </xsl:for-each>

        <xsl:for-each select="$subtitles">
            <xsl:if test="position() = 1">
                <xsl:text>&#x20;:&#x20;</xsl:text>
            </xsl:if>
            <xsl:if test="position() > 1">
                <xsl:text>.&#x20;</xsl:text>
            </xsl:if>

            <xsl:call-template name="removeTrailingPunctuation">
                <xsl:with-param name="input" select="."/>
            </xsl:call-template>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="removeTrailingPunctuation">
        <xsl:param name="input" />

        <xsl:variable name="currentValue" select="normalize-space($input)" />
        <xsl:variable name="lastChar" select="normalize-space(substring($currentValue, string-length($currentValue)))" />
        <xsl:choose>
            <xsl:when test="$lastChar = '/' or $lastChar = ';' or $lastChar = ',' or $lastChar = '.'">
                <xsl:value-of select="normalize-space(substring($currentValue, 1, string-length($currentValue) - 1))" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$input" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="formatDate">
        <xsl:param name="date" />
        <xsl:if test="string-length($date) = 4">
            <xsl:value-of select="concat($date, '-01-01')" />
        </xsl:if>
        <xsl:if test="string-length($date) > 4">
            <xsl:value-of select="$date" />
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
