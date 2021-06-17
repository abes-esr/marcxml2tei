<xsl:stylesheet xmlns="http://www.tei-c.org/ns/1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
   <xsl:strip-space elements="*"/>
   <xsl:output method="xml" indent="yes"/>
   <xsl:template name="codeOai">
      <xsl:param name="code"/>
      <xsl:variable name="var">;ddc:540=CHIM:OTHE;ddc:720=SHS:ARCHI;ddc:000=INFO:INFO_CY;ddc:004=INFO:INFO_OH;ddc:510=MATH:MATH_GM;ddc:160=MATH:MATH_LO;ddc:310=MATH:MATH_ST;ddc:530=PHYS:COND:CM_GEN;ddc:520=SDU:OTHER;ddc:550=SDU:STU;ddc:560=SDU:STU:PG;ddc:660=SDV:AEN;ddc:590=SDV:BA;ddc:580=SDV:BV;ddc:610=SDV:MHEP;ddc:500=SDV:OT;ddc:570=SDV:SA;ddc:630=SDV:SA;ddc:390=SHS:ANTHRO_SE;ddc:930=SHS:ARCHEO;ddc:380=SHS:ECO;ddc:690=SHS:ARCHI;ddc:710=SHS:ARCHI;ddc:700=SHS:ART;ddc:730=SHS:ART;ddc:740=SHS:ART;ddc:750=SHS:ART;ddc:760=SHS:ART;ddc:770=SHS:ART;ddc:340=SHS:DROIT;ddc:330=SHS:ECO;ddc:640=SHS:ECO;ddc:370=SHS:EDU;ddc:796=SHS:EDU;ddc:910=SHS:GEO;ddc:650=SHS:GESTION;ddc:900=SHS:HIST;ddc:920=SHS:HIST;ddc:940=SHS:HIST;ddc:944=SHS:HIST;ddc:950=SHS:HIST;ddc:960=SHS:HIST;ddc:970=SHS:HIST;ddc:980=SHS:HIST;ddc:990=SHS:HIST;ddc:020=SHS:INFO;ddc:070=SHS:INFO;ddc:090=SHS:INFO;ddc:400=SHS:LANGUE;ddc:410=SHS:LANGUE;ddc:420=SHS:LANGUE;ddc:430=SHS:LANGUE;ddc:440=SHS:LANGUE;ddc:450=SHS:LANGUE;ddc:460=SHS:LANGUE;ddc:470=SHS:LANGUE;ddc:480=SHS:LANGUE;ddc:490=SHS:LANGUE;ddc:800=SHS:LITT;ddc:810=SHS:LITT;ddc:820=SHS:LITT;ddc:830=SHS:LITT;ddc:840=SHS:LITT;ddc:850=SHS:LITT;ddc:860=SHS:LITT;ddc:870=SHS:LITT;ddc:880=SHS:LITT;ddc:890=SHS:LITT;ddc:060=SHS:MUSEO;ddc:780=SHS:MUSIQ;ddc:790=SHS:MUSIQ;ddc:100=SHS:PHIL;ddc:110=SHS:PHIL;ddc:120=SHS:PHIL;ddc:140=SHS:PHIL;ddc:170=SHS:PHIL;ddc:180=SHS:PHIL;ddc:190=SHS:PHIL;ddc:150=SHS:PSY;ddc:130=SHS:RELIG;ddc:200=SHS:RELIG;ddc:210=SHS:RELIG;ddc:220=SHS:RELIG;ddc:230=SHS:RELIG;ddc:240=SHS:RELIG;ddc:250=SHS:RELIG;ddc:260=SHS:RELIG;ddc:270=SHS:RELIG;ddc:280=SHS:RELIG;ddc:290=SHS:RELIG;ddc:320=SHS:SCIPO;ddc:350=SHS:SCIPO;ddc:300=SHS:SOCIO;ddc:360=SHS:SOCIO;ddc:600=SPI:OTHER;ddc:620=SPI:OTHER;ddc:670=SPI:OTHER;ddc:680=SPI:OTHER</xsl:variable>
      <xsl:value-of select="substring-before(substring-after($var, concat(';', concat('ddc:', $code), '=')), ';')"/>
   </xsl:template>
</xsl:stylesheet>
