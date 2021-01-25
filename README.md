<div align="center">

# MarcXML2TEI

_Conversion de documents MarcXML en TEI_

</div>

MarcXML2TEI permet de produire à partir d'une notices bibliographiques de documents universitaires [MarcXML](http://documentation.abes.fr/sudoc/manuels/administration/aidewebservices/index.html#SudocMarcXML), des notices TEI. Ces notices peuvent être importées dans HAL grâce à [SWORD](https://api.archives-ouvertes.fr/docs/sword) ou [X2hal](https://doc.archives-ouvertes.fr/x2hal/).


> 📝 __MarcXML2TEI ne prend en charge que les notices Unimarc conformes aux [consignes de cataloguage des documents universitaires hors thèses](http://documentation.abes.fr/sudoc/regles/Catalogage/Regles_Theses_AutresDocsUniv.htm).__

## Utilisation

> Cette section expose en bref l'utilisation de marcxml2tei. Un [guide d'utilisation pas à pas](./guide.md) est également disponible 📔
 
__Transformation simple :__

```
saxon-xslt marcxml_sample/252383524.xml xslt/marcxml2tei.xslt > ouput.tei
```

__Transformation avancées :__

Certaines valeurs par défaut, comme le diplôme ou la langue secondaire du document, peuvent être changées lors de l'appel du moteur de tranformation XSLT.

```
saxon-xslt marcxml_sample/252383524.xml xslt/marcxml2tei.xslt defaultDegreeCode=23 secondaryLanguage=eng > output.tei
```

[Voir la liste complètes des paramètres disponibles](#paramètres)

## Paramètres

Unimarc2TEI expose les paramètres suivants au moteur XSLT:

* `primaryLanguage` [optionnel, valeur par défaut : 'fre'] : Définit la langue principale du document au format [ISO 639-2](https://www.loc.gov/standards/iso639-2/php/code_list.php). Même si il est renseigné, ce paramètre n'est utilisé que lorsque les données Unimarc sont insuffisantes pour déterminer la langue principale du document.
* `secondaryLanguage` [optionnel, valeur par défaut : 'eng'] : Définit la langue secondaire du document au format [ISO 639-2](https://www.loc.gov/standards/iso639-2/php/code_list.php). Même si il est renseigné, ce paramètre n'est utilisé que lorsque les données Unimarc sont insuffisantes pour déterminer la langue secondaire du document.
* `degreeCode` [optionnel] : Permet de remplacer la valeur du code diplôme utilisée par défaut : `23`. [Liste des codes diplômes](https://api.archives-ouvertes.fr/ref/metadataList/?q=metaName_s:dumas_degreeType&rows=100&fl=fr_metaLabel_s,metaValue_s).
* `fileLocation` [optionnel] : Spécifie l'emplacement du fichier. Ce paramètre peut prendre la forme d'un lien HTTP ou FTP.
* `embargoDate` : Définit une date d'embargo au format `AAAA-MM-JJ`.
