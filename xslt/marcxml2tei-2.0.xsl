<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:hal="http://hal.archives-ouvertes.fr/" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 http://api.archives-ouvertes.fr/documents/aofr-sword.xsd"
    xmlns:ext="http://exslt.org/common">
    <!-- /!\ For development and tests purposes only. Will be overwrited by Oracle template or by bundle template with fresh data-->
    <xsl:import href="../commons/code_langues.xsl" />
    <!-- /!\ For development and tests purposes only. Will be overwrited by Oracle template or by bundle template with fresh data-->
    <xsl:import href="../commons/mapping_domainesTEL_et_oaiSets.xsl" />
    <xsl:strip-space elements="*" />
    <xsl:output method="xml" indent="yes" />
    
    <!-- Paramètres pouvant être modifiés par saxon : `saxon-xslt 252383524.xml mapping.xslt secondaryLanguageCode=es degreeCode=22 > output.tei`  -->
    <!-- Langue principale du document. Au format ISO 639-2. Lorsqu'il est renseigné, ce paramètre n'est utilisé que s'il est impossible de trouver la langue principale du document-->
    <xsl:param name="primaryLanguage" as="xs:string" required="no" select="'fre'"/>
    <!-- Langue secondaire du document. Au format ISO 639-2. Lorsqu'il est renseigné, ce paramètre n'est utilisé que s'il est impossible de trouver la langue secondaire du document -->
    <xsl:param name="secondaryLanguage" as="xs:string" required="no" select="'eng'"/>
    <!-- Liste des codes diplôme : https://api.archives-ouvertes.fr/ref/metadataList/?q=metaName_s:dumas_degreeType&rows=70 -->
    <xsl:param name="degreeCode" as="xs:string" required="no" select="'23'"/>
    <!-- Lien vers le fichier PDF. Peut prendre la forme d'un lien ftp -->
    <xsl:param name="fileLocation" as="xs:string" required="no" select="''"/>
    <!-- Date d'embargo  au format AAAA-MM-JJ -->
    <xsl:param name="embargoDate" as="xs:string" required="no" select="format-date(current-date(),'[Y0001]-[M01]-[D01]')"/>

    <!-- Récupération du code langue en 101$a. Valeur par défaut = valeur du paramètre primaryLanguage ou 'fre'-->
    <xsl:variable name="mappingCodeLangue" select="document('code_langues.xml')" />
    <xsl:variable name="primaryLanguageCode">
        <xsl:variable name="primaryLanguageCode639_2" select="(/record/datafield[@tag='101']/subfield[@code='a'], $primaryLanguage)[1]"/>
        <xsl:call-template name="codeLangue">
            <xsl:with-param name="code" select="$primaryLanguageCode639_2"/>
        </xsl:call-template>
    </xsl:variable>

    <!-- Récupération du code langue en 101$d ou en 541$z. Valeur par défaut = valeur du paramètre secondaryLanguage ou 'eng' -->
    <xsl:variable name="secondaryLanguageCode">
        <xsl:variable name="secondaryLanguageCode639_2" select="(/record/datafield[@tag='101']/subfield[@code='d'][2], datafield[@tag = '541']/subfield[@code = 'z'], $secondaryLanguage)[1]"/>
        <xsl:call-template name="codeLangue">
            <xsl:with-param name="code" select="$secondaryLanguageCode639_2"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="IdRefBaseUrl" select="'https://www.idref.fr/'"/>

    <xsl:template match="record">
        <TEI xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.tei-c.org/ns/1.0 http://api.archives-ouvertes.fr/documents/aofr-sword.xsd"
            xmlns="http://www.tei-c.org/ns/1.0"
            xmlns:hal="http://hal.archives-ouvertes.fr/">
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
        <editionStmt xmlns="http://www.tei-c.org/ns/1.0">
            <edition>
                <date type="whenWritten">
                    <xsl:value-of select="datafield[@tag = '328']/subfield[@code = 'd']" />
                </date>
                <xsl:if test="$fileLocation">
                    <ref type="file" subtype="author" n="1" target="{$fileLocation}">
                        <date notBefore="{$embargoDate}" />
                    </ref>
                </xsl:if>
            </edition>
        </editionStmt>
    </xsl:template>

    <xsl:template name="notesStmt">
        <notesStmt xmlns="http://www.tei-c.org/ns/1.0">
            <note type="audience" n="3" />
            <!-- <note type="degree" n="{$degreeCode}" /> -->
        </notesStmt>
    </xsl:template>

    <xsl:template name="analytic">
        <analytic xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:call-template name="title" />
            <xsl:call-template name="author" />
        </analytic>
    </xsl:template>

    <xsl:template name="title">
        <title xmlns="http://www.tei-c.org/ns/1.0" xml:lang="{$primaryLanguageCode}">
            <xsl:call-template name="joinTitleElements">
                <xsl:with-param name="titles" select="datafield[@tag = '200']/subfield[@code = 'a']" />
                <xsl:with-param name="subtitles" select="datafield[@tag = '200']/subfield[@code = 'e']" />
            </xsl:call-template>
        </title>

        <xsl:if test="datafield[@tag = '541']/subfield[@code = ('a', 'e')]">
            <title xml:lang="{$secondaryLanguageCode}">
                <xsl:call-template name="joinTitleElements">
                    <xsl:with-param name="titles" select="datafield[@tag = '541']/subfield[@code = 'a']" />
                    <xsl:with-param name="subtitles" select="datafield[@tag = '541']/subfield[@code = 'e']" />
                </xsl:call-template>
            </title>
        </xsl:if>
    </xsl:template>

    <xsl:template name="author">
        <!-- for-each is used to sets the current node context -->
        <xsl:for-each select="datafield[@tag = '700' and subfield[@code = '4'] = '070' ]">
            <author xmlns="http://www.tei-c.org/ns/1.0" role="aut">
                <persName>
                    <forename type="first">
                        <xsl:value-of select="subfield[@code = 'a']" />
                    </forename>
                    <surname>
                        <xsl:value-of select="subfield[@code = 'b']" />
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
        <monogr xmlns="http://www.tei-c.org/ns/1.0">
            <!-- <settlement>
                <xsl:value-of select="datafield[@tag = '711' and subfield[@code = '4'] = '295' ]/subfield[@code = 'c']" />
            </settlement> -->
            <imprint>
                <xsl:analyze-string select="(datafield[@tag = '307']/subfield[@code = ('a') and contains(., 'impression du document génère')])[1]/text()" regex="impression du document génère (\d+) p\.">
                    <xsl:matching-substring>
                        <biblScope unit="pp">
                            <xsl:value-of select="regex-group(1)"/>
                        </biblScope>
                    </xsl:matching-substring>
                </xsl:analyze-string>
                <date type="dateDefended">
                    <xsl:call-template name="formatDate">
                        <xsl:with-param name="date" select="(datafield[@tag = '328']/subfield[@code = ('d')])[1]" />
                    </xsl:call-template>
                </date>
            </imprint>
            <xsl:if test="datafield[@tag = '711' and subfield[@code = '4'] = '295' ]">
                <authority type="institution">
                    <xsl:value-of select="datafield[@tag = '711']/subfield[@code = 'a']"/>
                </authority>
            </xsl:if>
            <xsl:if test="datafield[@tag = '701' and subfield[@code = '4'] = '727' ]">
                <authority type="supervisor">
                    <xsl:value-of select="normalize-space(concat(datafield[@tag = '701']/subfield[@code = 'b'], ' ', datafield[@tag = '701']/subfield[@code = 'a']))" />
                </authority>
            </xsl:if>
        </monogr>
    </xsl:template>

    <xsl:template name="profileDesc">
        <profileDesc xmlns="http://www.tei-c.org/ns/1.0">
            <xsl:variable name="valLangue102">
                <xsl:value-of select="lower-case(datafield[@tag = '102']/subfield[@code = 'a'])" />
            </xsl:variable>
            <xsl:if test="$valLangue102 != null and $valLangue102 != ''">
                <langUsage>
                    <language ident="{$valLangue102}" />
                </langUsage>
            </xsl:if>
            <textClass>
                <xsl:call-template name="keywords"/>

                <xsl:for-each select="datafield[@tag = '686' and subfield[@code = '2'] = 'TEF']/subfield[@code = 'a']">
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
            <keywords xmlns="http://www.tei-c.org/ns/1.0" scheme="author">
                <xsl:for-each select="distinct-values($keywords)">
                    <term xml:lang="{$primaryLanguageCode}">
                        <xsl:value-of select="." />
                    </term>
                </xsl:for-each>
            </keywords>
        </xsl:if>
    </xsl:template>

    <xsl:template name="abstract">
        <xsl:for-each select="datafield[@tag = '330']/subfield[@code = 'a']">
            <xsl:if test="position() = 1">
                <abstract xmlns="http://www.tei-c.org/ns/1.0" xml:lang="{$primaryLanguageCode}">
                    <xsl:value-of select="." />
                </abstract>
            </xsl:if>
            <xsl:if test="position() = 2">
                <abstract xmlns="http://www.tei-c.org/ns/1.0" xml:lang="{$secondaryLanguageCode}">
                    <xsl:value-of select="." />
                </abstract>
            </xsl:if>
        </xsl:for-each>
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
        <xsl:value-of select="
            normalize-space(if (ends-with($input, '/') or ends-with($input, ';') or ends-with($input, ',') or ends-with($input, '.')) then
                substring($input, 1, string-length(.) - 1)
            else
                $input)" />
    </xsl:template>

    <xsl:template name="formatDate">
        <xsl:param name="date" />
        <xsl:if test="string-length($date) = 4">
            <xsl:value-of select="xs:date(concat($date, '-01-01'))" />
        </xsl:if>
        <xsl:if test="string-length($date) > 4">
            <xsl:value-of select="$date" />
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
