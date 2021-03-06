<xsl:stylesheet xmlns="http://www.tei-c.org/ns/1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
   <xsl:strip-space elements="*"/>
   <xsl:output method="xml" indent="yes"/>
   <xsl:template name="codeLangue">
      <xsl:param name="code"/>
      <xsl:variable name="var">;aar=aa;abk=ab;afr=af;aka=ak;amh=am;ara=ar;arg=an;asm=as;ava=av;ave=ae;aym=ay;aze=az;bak=ba;bam=bm;bel=be;ben=bn;bis=bi;tib=bo;bos=bs;bre=br;bul=bg;cat=ca;cze=cs;cha=ch;che=ce;chu=cu;chv=cv;cor=kw;cos=co;cre=cr;wel=cy;dan=da;ger=de;div=dv;dzo=dz;gre=el;eng=en;epo=eo;est=et;baq=eu;ewe=ee;fao=fo;per=fa;fij=fj;fin=fi;fre=fr;fry=fy;ful=ff;gla=gd;gle=ga;glg=gl;glv=gv;grn=gn;guj=gu;hat=ht;hau=ha;=sh;heb=he;her=hz;hin=hi;hmo=ho;hrv=hr;hun=hu;arm=hy;ibo=ig;ido=io;iii=ii;iku=iu;ile=ie;ina=ia;ind=id;ipk=ik;ice=is;ita=it;jav=jv;jpn=ja;kal=kl;kan=kn;kas=ks;geo=ka;kau=kr;kaz=kk;khm=km;kik=ki;kin=rw;kir=ky;kom=kv;kon=kg;kor=ko;kua=kj;kur=ku;lao=lo;lat=la;lav=lv;lim=li;lin=ln;lit=lt;ltz=lb;lub=lu;lug=lg;mah=mh;mal=ml;mar=mr;mac=mk;mlg=mg;mlt=mt;mon=mn;mao=mi;may=ms;bur=my;nau=na;nav=nv;nbl=nr;nde=nd;ndo=ng;nep=ne;dut=nl;nno=nn;nob=nb;nor=no;nya=ny;oci=oc;oji=oj;ori=or;orm=om;oss=os;pan=pa;pli=pi;pol=pl;por=pt;pus=ps;que=qu;roh=rm;rum=ro;run=rn;rus=ru;sag=sg;san=sa;sin=si;slo=sk;slv=sl;sme=se;smo=sm;sna=sn;snd=sd;som=so;sot=st;spa=es;alb=sq;srd=sc;srp=sr;ssw=ss;sun=su;swa=sw;swe=sv;tah=ty;tam=ta;tat=tt;tel=te;tgk=tg;tgl=tl;tha=th;tir=ti;ton=to;tsn=tn;tso=ts;tuk=tk;tur=tr;twi=tw;uig=ug;ukr=uk;urd=ur;uzb=uz;ven=ve;vie=vi;vol=vo;wln=wa;wol=wo;xho=xh;yid=yi;yor=yo;zha=za;chi=zh;zul=zu</xsl:variable>
      <xsl:value-of select="substring-before(substring-after($var, concat(';', $code, '=')), ';')"/>
   </xsl:template>
</xsl:stylesheet>
