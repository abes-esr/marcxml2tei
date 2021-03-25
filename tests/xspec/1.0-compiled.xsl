<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                version="3.0">
   <!-- the tested stylesheet -->
   <xsl:import href="file:/home/mathis/Dev/ABES/marcxml2tei/xslt/marcxml2tei-1.0.xsl"/>
   <!-- XSpec library modules providing tools -->
   <xsl:include href="file:/opt/xspec/src/common/runtime-utils.xsl"/>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}stylesheet-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/mathis/Dev/ABES/marcxml2tei/xslt/marcxml2tei-1.0.xsl</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}xspec-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/home/mathis/Dev/ABES/marcxml2tei/tests/1.0.xspec</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}is-external"
                 as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                 select="false()"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d63e2-doc" as="document-node()">
      <xsl:document>
         <xsl:text>fre</xsl:text>
      </xsl:document>
   </xsl:variable>
   <xsl:param name="Q{}primaryLanguage"
              select="$Q{urn:x-xspec:compile:impl}param-d63e2-doc ! ( node() )"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d63e4-doc" as="document-node()">
      <xsl:document>
         <xsl:text>fr</xsl:text>
      </xsl:document>
   </xsl:variable>
   <xsl:param name="Q{}primaryLanguageCode"
              select="$Q{urn:x-xspec:compile:impl}param-d63e4-doc ! ( node() )"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d63e6-doc" as="document-node()">
      <xsl:document>
         <xsl:text>eng</xsl:text>
      </xsl:document>
   </xsl:variable>
   <xsl:param name="Q{}secondaryLanguage"
              select="$Q{urn:x-xspec:compile:impl}param-d63e6-doc ! ( node() )"/>
   <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d63e8-doc" as="document-node()">
      <xsl:document>
         <xsl:text>en</xsl:text>
      </xsl:document>
   </xsl:variable>
   <xsl:param name="Q{}secondaryLanguageCode"
              select="$Q{urn:x-xspec:compile:impl}param-d63e8-doc ! ( node() )"/>
   <!-- the main template to run the suite -->
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}main"
                 as="empty-sequence()">
      <xsl:context-item use="absent"/>
      <!-- info message -->
      <xsl:message>
         <xsl:text>Testing with </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name')"/>
         <xsl:text> </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version')"/>
      </xsl:message>
      <!-- set up the result document (the report) -->
      <xsl:result-document format="Q{{http://www.jenitennison.com/xslt/xspec}}xml-report-serialization-parameters">
         <xsl:element name="report" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/1.0.xspec</xsl:attribute>
            <xsl:attribute name="stylesheet" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/xslt/marcxml2tei-1.0.xsl</xsl:attribute>
            <xsl:attribute name="date" namespace="" select="current-dateTime()"/>
            <!-- invoke each compiled top-level x:scenario -->
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario2"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario3"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario4"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario5"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario6"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario7"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario8"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario9"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario10"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario11"/>
            <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario12"/>
         </xsl:element>
      </xsl:result-document>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>joinTitleElements with a title and subtitle</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>joinTitleElements with a title and subtitle</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">joinTitleElements</xsl:attribute>
               <xsl:element name="x:param" namespace="http://www.jenitennison.com/xslt/xspec">
                  <xsl:attribute name="name" namespace="">titles</xsl:attribute>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A title</xsl:text>
                  </xsl:element>
               </xsl:element>
               <xsl:element name="x:param" namespace="http://www.jenitennison.com/xslt/xspec">
                  <xsl:attribute name="name" namespace="">subtitles</xsl:attribute>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A subtitle</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d65e1-doc" as="document-node()">
               <xsl:document>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A title</xsl:text>
                  </xsl:element>
               </xsl:document>
            </xsl:variable>
            <xsl:variable name="Q{}titles"
                          select="$Q{urn:x-xspec:compile:impl}param-d65e1-doc ! ( node() )"/>
            <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d65e4-doc" as="document-node()">
               <xsl:document>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A subtitle</xsl:text>
                  </xsl:element>
               </xsl:document>
            </xsl:variable>
            <xsl:variable name="Q{}subtitles"
                          select="$Q{urn:x-xspec:compile:impl}param-d65e4-doc ! ( node() )"/>
            <xsl:call-template name="Q{}joinTitleElements">
               <xsl:with-param xmlns:x="http://www.jenitennison.com/xslt/xspec"
                               name="Q{}titles"
                               select="$Q{}titles"/>
               <xsl:with-param xmlns:x="http://www.jenitennison.com/xslt/xspec"
                               name="Q{}subtitles"
                               select="$Q{}subtitles"/>
            </xsl:call-template>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Title and subtitles should be separated with `:` with no leading `.`</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e18-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:text>A title : A subtitle</xsl:text>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e18"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e18-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e18, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Title and subtitles should be separated with `:` with no leading `.`</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e18"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario2"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>joinTitleElements with title and subtitle and a subsubtitle</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario2</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>joinTitleElements with title and subtitle and a subsubtitle</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">joinTitleElements</xsl:attribute>
               <xsl:element name="x:param" namespace="http://www.jenitennison.com/xslt/xspec">
                  <xsl:attribute name="name" namespace="">titles</xsl:attribute>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A title</xsl:text>
                  </xsl:element>
               </xsl:element>
               <xsl:element name="x:param" namespace="http://www.jenitennison.com/xslt/xspec">
                  <xsl:attribute name="name" namespace="">subtitles</xsl:attribute>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A subtitle</xsl:text>
                  </xsl:element>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>Another subtitle</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d74e1-doc" as="document-node()">
               <xsl:document>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A title</xsl:text>
                  </xsl:element>
               </xsl:document>
            </xsl:variable>
            <xsl:variable name="Q{}titles"
                          select="$Q{urn:x-xspec:compile:impl}param-d74e1-doc ! ( node() )"/>
            <xsl:variable name="Q{urn:x-xspec:compile:impl}param-d74e4-doc" as="document-node()">
               <xsl:document>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>A subtitle</xsl:text>
                  </xsl:element>
                  <xsl:element name="value" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:text>Another subtitle</xsl:text>
                  </xsl:element>
               </xsl:document>
            </xsl:variable>
            <xsl:variable name="Q{}subtitles"
                          select="$Q{urn:x-xspec:compile:impl}param-d74e4-doc ! ( node() )"/>
            <xsl:call-template name="Q{}joinTitleElements">
               <xsl:with-param xmlns:x="http://www.jenitennison.com/xslt/xspec"
                               name="Q{}titles"
                               select="$Q{}titles"/>
               <xsl:with-param xmlns:x="http://www.jenitennison.com/xslt/xspec"
                               name="Q{}subtitles"
                               select="$Q{}subtitles"/>
            </xsl:call-template>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario2-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario2-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Title and subtitles should be separated with `:` and subtitles with `.` with no leading `.`</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e30-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:text>A title : A subtitle. Another subtitle</xsl:text>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e30"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e30-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e30, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario2-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Title and subtitles should be separated with `:` and subtitles with `.` with no leading `.`</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e30"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario3"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>editionStmt without fileLocation</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario3</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>editionStmt without fileLocation</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2004</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d82e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2004</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d82e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d82e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d82e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">editionStmt</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d82e0">
               <xsl:call-template name="Q{}editionStmt"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario3-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario3-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Should display whenWritten. The embargo node (notBefore) shouldn't show up.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e39-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="editionStmt" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:element name="edition" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:element name="date" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="type"
                                    namespace=""
                                    select="'', ''"
                                    separator="whenWritten"/>
                     <xsl:text>2004</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e39"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e39-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e39, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario3-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Should display whenWritten. The embargo node (notBefore) shouldn't show up.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e39"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario4"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Original title only</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario4</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Original title only</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="200"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>A title</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="e"/>
                        <xsl:text>A subtitle</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d91e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="200"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>A title</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="e"/>
                        <xsl:text>A subtitle</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d91e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d91e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d91e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">title</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d91e0">
               <xsl:call-template name="Q{}title"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario4-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario4-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Shoud output the original title.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e53-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="title" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:attribute xmlns:ext="http://exslt.org/common"
                              xmlns:hal="http://hal.archives-ouvertes.fr/"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                              name="xml:lang"
                              namespace="http://www.w3.org/XML/1998/namespace"
                              select="'', ''"
                              separator="fr"/>
               <xsl:text>A title : A subtitle</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e53"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e53-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e53, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario4-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Shoud output the original title.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e53"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario5"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Original and translated title</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario5</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Original and translated title</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="200"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Un titre</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="e"/>
                        <xsl:text>Un sous-titre</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="541"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="|"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>A title</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="e"/>
                        <xsl:text>A subtitle</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>eng</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d100e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="200"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Un titre</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="e"/>
                        <xsl:text>Un sous-titre</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="541"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="|"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>A title</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="e"/>
                        <xsl:text>A subtitle</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="z"/>
                        <xsl:text>eng</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d100e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d100e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d100e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">title</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d100e0">
               <xsl:call-template name="Q{}title"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario5-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario5-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Shoud output the original and the translated title.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e72-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="title" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:attribute xmlns:ext="http://exslt.org/common"
                              xmlns:hal="http://hal.archives-ouvertes.fr/"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                              name="xml:lang"
                              namespace="http://www.w3.org/XML/1998/namespace"
                              select="'', ''"
                              separator="fr"/>
               <xsl:text>Un titre : Un sous-titre</xsl:text>
            </xsl:element>
            <xsl:element name="title" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:attribute xmlns:ext="http://exslt.org/common"
                              xmlns:hal="http://hal.archives-ouvertes.fr/"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                              name="xml:lang"
                              namespace="http://www.w3.org/XML/1998/namespace"
                              select="'', ''"
                              separator="en"/>
               <xsl:text>A title : A subtitle</xsl:text>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e72"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e72-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e72, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario5-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Shoud output the original and the translated title.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e72"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario6"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Author</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario6</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Author</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="700"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>12345689X</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Doe</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>John</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>070</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d109e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="700"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>12345689X</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Doe</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>John</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>070</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d109e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d109e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d109e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">author</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d109e0">
               <xsl:call-template name="Q{}author"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario6-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario6-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Should output the author.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e91-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="author" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:attribute xmlns:ext="http://exslt.org/common"
                              xmlns:hal="http://hal.archives-ouvertes.fr/"
                              xmlns:x="http://www.jenitennison.com/xslt/xspec"
                              xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                              name="role"
                              namespace=""
                              select="'', ''"
                              separator="aut"/>
               <xsl:element name="persName" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:element name="forename" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="type"
                                    namespace=""
                                    select="'', ''"
                                    separator="first"/>
                     <xsl:text>Doe</xsl:text>
                  </xsl:element>
                  <xsl:element name="surname" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:text>John</xsl:text>
                  </xsl:element>
               </xsl:element>
               <xsl:element name="idno" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:attribute xmlns:ext="http://exslt.org/common"
                                 xmlns:hal="http://hal.archives-ouvertes.fr/"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                 name="type"
                                 namespace=""
                                 select="'', ''"
                                 separator="IdRef"/>
                  <xsl:text>https://www.idref.fr/12345689X</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e91"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e91-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e91, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario6-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Should output the author.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e91"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario7"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Author with invalid function code</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario7</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Author with invalid function code</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="700"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>12345689X</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Doe</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>John</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>XXX</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d118e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="700"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>12345689X</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Doe</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>John</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>XXX</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d118e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d118e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d118e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">author</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d118e0">
               <xsl:call-template name="Q{}author"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario7-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario7-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Author with invalid function code shouldn't show up.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e114" select="()"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e114, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario7-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Author with invalid function code shouldn't show up.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e114"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario8"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Monogr</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario8</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Monogr</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2020</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="711"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>026402920</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Université d'Angers</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>295</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="701"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>031290035</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Bellamy</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>David</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="f"/>
                        <xsl:text>1965-....</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>727</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d127e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2020</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="711"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>026402920</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Université d'Angers</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>295</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="701"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>031290035</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Bellamy</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>David</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="f"/>
                        <xsl:text>1965-....</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>727</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d127e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d127e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d127e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">monogr</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d127e0">
               <xsl:call-template name="Q{}monogr"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario8-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario8-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Should display monogr data.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e140-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="monogr" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:element name="imprint" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:element name="date" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="type"
                                    namespace=""
                                    select="'', ''"
                                    separator="dateDefended"/>
                     <xsl:text>2020-01-01</xsl:text>
                  </xsl:element>
               </xsl:element>
               <xsl:element name="authority" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:attribute xmlns:ext="http://exslt.org/common"
                                 xmlns:hal="http://hal.archives-ouvertes.fr/"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                 name="type"
                                 namespace=""
                                 select="'', ''"
                                 separator="institution"/>
                  <xsl:text>Université d'Angers</xsl:text>
               </xsl:element>
               <xsl:element name="authority" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:attribute xmlns:ext="http://exslt.org/common"
                                 xmlns:hal="http://hal.archives-ouvertes.fr/"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                 name="type"
                                 namespace=""
                                 select="'', ''"
                                 separator="supervisor"/>
                  <xsl:text>David Bellamy</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e140"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e140-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e140, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario8-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Should display monogr data.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e140"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario9"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Monog with incomplete defense date.</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario9</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Monog with incomplete defense date.</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2020</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="711"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>026402920</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Université d'Angers</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>295</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="701"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>031290035</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Bellamy</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>David</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="f"/>
                        <xsl:text>1965-....</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>727</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d136e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2020</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="711"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>026402920</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Université d'Angers</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>295</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="701"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>031290035</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Bellamy</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>David</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="f"/>
                        <xsl:text>1965-....</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>727</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d136e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d136e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d136e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">monogr</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d136e0">
               <xsl:call-template name="Q{}monogr"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario9-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario9-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Defense date YYYY should be reformated automatically to YYY-MM-DD.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e174-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="monogr" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:element name="imprint" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:element name="date" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="type"
                                    namespace=""
                                    select="'', ''"
                                    separator="dateDefended"/>
                     <xsl:text>2020-01-01</xsl:text>
                  </xsl:element>
               </xsl:element>
               <xsl:element name="authority" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:attribute xmlns:ext="http://exslt.org/common"
                                 xmlns:hal="http://hal.archives-ouvertes.fr/"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                 name="type"
                                 namespace=""
                                 select="'', ''"
                                 separator="institution"/>
                  <xsl:text>Université d'Angers</xsl:text>
               </xsl:element>
               <xsl:element name="authority" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:attribute xmlns:ext="http://exslt.org/common"
                                 xmlns:hal="http://hal.archives-ouvertes.fr/"
                                 xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                 name="type"
                                 namespace=""
                                 select="'', ''"
                                 separator="supervisor"/>
                  <xsl:text>David Bellamy</xsl:text>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e174"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e174-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e174, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario9-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Defense date YYYY should be reformated automatically to YYY-MM-DD.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e174"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario10"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Monogr invalid function code.</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario10</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Monogr invalid function code.</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2020</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="711"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>026402920</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Université d'Angers</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>XXX</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="701"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>031290035</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Bellamy</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>David</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="f"/>
                        <xsl:text>1965-....</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>XXX</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d145e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="328"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="d"/>
                        <xsl:text>2020</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="711"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator="0"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="2"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>026402920</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Université d'Angers</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>XXX</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="701"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator="1"/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="3"/>
                        <xsl:text>031290035</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>Bellamy</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="b"/>
                        <xsl:text>David</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="f"/>
                        <xsl:text>1965-....</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="4"/>
                        <xsl:text>XXX</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d145e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d145e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d145e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">monogr</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d145e0">
               <xsl:call-template name="Q{}monogr"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario10-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario10-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Authority with invalid function code shouldn't show up.</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e208-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="monogr" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:element name="imprint" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:element name="date" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="type"
                                    namespace=""
                                    select="'', ''"
                                    separator="dateDefended"/>
                     <xsl:text>2020-01-01</xsl:text>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e208"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e208-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e208, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario10-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Authority with invalid function code shouldn't show up.</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e208"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario11"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>profileDesc without keywords and without abstract</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario11</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>profileDesc without keywords and without abstract</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="102"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>FR</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="686"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>940</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="2"/>
                        <xsl:text>TEF</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d154e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="102"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>FR</xsl:text>
                     </xsl:element>
                  </xsl:element>
                  <xsl:element name="datafield" namespace="">
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="tag"
                                    namespace=""
                                    select="'', ''"
                                    separator="686"/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind1"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    name="ind2"
                                    namespace=""
                                    select="'', ''"
                                    separator=" "/>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="a"/>
                        <xsl:text>940</xsl:text>
                     </xsl:element>
                     <xsl:element name="subfield" namespace="">
                        <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                        <xsl:attribute xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                       name="code"
                                       namespace=""
                                       select="'', ''"
                                       separator="2"/>
                        <xsl:text>TEF</xsl:text>
                     </xsl:element>
                  </xsl:element>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d154e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d154e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d154e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">profileDesc</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d154e0">
               <xsl:call-template name="Q{}profileDesc"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario11-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario11-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Should display profileDesc data</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e225-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="profileDesc" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:element name="textClass" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:element name="classCode" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="scheme"
                                    namespace=""
                                    select="'', ''"
                                    separator="halDomain"/>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="n"
                                    namespace=""
                                    select="'', ''"
                                    separator="SHS:HIST"/>
                  </xsl:element>
                  <xsl:element name="classCode" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="scheme"
                                    namespace=""
                                    select="'', ''"
                                    separator="halTypology"/>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="n"
                                    namespace=""
                                    select="'', ''"
                                    separator="MEM"/>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e225"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e225-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e225, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario11-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Should display profileDesc data</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e225"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario12"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>profileDesc without 102 and 686</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario12</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/home/mathis/Dev/ABES/marcxml2tei/tests/marcxml2tei.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>profileDesc without 102 and 686</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               </xsl:element>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d163e0-doc"
                       as="document-node()">
            <xsl:document>
               <xsl:element name="record" namespace="">
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               </xsl:element>
            </xsl:document>
         </xsl:variable>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d163e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d163e0-doc ! ( node() )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d163e0"/>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:call" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:attribute name="template" namespace="">profileDesc</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:for-each select="$Q{urn:x-xspec:compile:impl}context-d163e0">
               <xsl:call-template name="Q{}profileDesc"/>
            </xsl:for-each>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario12-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario12-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>Should display profileDesc data</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e234-doc"
                    as="document-node()">
         <xsl:document>
            <xsl:element name="profileDesc" namespace="">
               <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
               <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
               <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
               <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
               <xsl:element name="textClass" namespace="">
                  <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                  <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                  <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                  <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                  <xsl:element name="classCode" namespace="">
                     <xsl:namespace name="ext">http://exslt.org/common</xsl:namespace>
                     <xsl:namespace name="hal">http://hal.archives-ouvertes.fr/</xsl:namespace>
                     <xsl:namespace name="x">http://www.jenitennison.com/xslt/xspec</xsl:namespace>
                     <xsl:namespace name="xsi">http://www.w3.org/2001/XMLSchema-instance</xsl:namespace>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="scheme"
                                    namespace=""
                                    select="'', ''"
                                    separator="halTypology"/>
                     <xsl:attribute xmlns:ext="http://exslt.org/common"
                                    xmlns:hal="http://hal.archives-ouvertes.fr/"
                                    xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                    name="n"
                                    namespace=""
                                    select="'', ''"
                                    separator="MEM"/>
                  </xsl:element>
               </xsl:element>
            </xsl:element>
         </xsl:document>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d63e234"
                    select="$Q{urn:x-xspec:compile:impl}expect-d63e234-doc ! ( node() )"><!--expected result--></xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="Q{urn:x-xspec:common:deep-equal}deep-equal($Q{urn:x-xspec:compile:impl}expect-d63e234, $Q{http://www.jenitennison.com/xslt/xspec}result, '')"/>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario12-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Should display profileDesc data</xsl:text>
         </xsl:element>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d63e234"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
</xsl:stylesheet>
