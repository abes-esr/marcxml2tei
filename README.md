<div align="center">

# MarcXML2TEI

_Conversion de documents MarcXML en TEI_

[![Release](https://github.com/abes-esr/marcxml2tei/actions/workflows/release.yml/badge.svg)](https://github.com/abes-esr/marcxml2tei/actions/workflows/release.yml)
[![Latest Build](https://img.shields.io/badge/%F0%9F%93%A6%20lastest%20build-marcxml2tei.xsl-yellow)](https://github.com/abes-esr/marcxml2tei/releases/latest/download/marcxml2tei-2.0.xsl)
[![GitHub release](https://img.shields.io/github/release/abes-esr/marcxml2tei.svg)](https://github.com/abes-esr/marcxml2tei/releases/latest)
[![Contribution Welcome](https://img.shields.io/badge/contribution-welcome-green.svg)](https://github.com/abes-esr/marcxml2tei/pulls)
[![license](https://img.shields.io/badge/license-CeCILL%202.1-blue.svg)](https://cecill.info/licences/Licence_CeCILL_V2.1-en.txt)

</div>

MarcXML2TEI permet de produire à partir de notices bibliographiques de documents universitaires [MarcXML](http://documentation.abes.fr/sudoc/manuels/administration/aidewebservices/index.html#SudocMarcXML), des notices TEI. Ces notices peuvent être importées dans HAL grâce à [SWORD](https://api.archives-ouvertes.fr/docs/sword) ou [X2hal](https://doc.archives-ouvertes.fr/x2hal/).


> 📝 __MarcXML2TEI ne prend en charge que les notices Unimarc conformes aux [consignes de catalogage des documents universitaires hors thèses](http://documentation.abes.fr/sudoc/regles/Catalogage/Regles_Theses_AutresDocsUniv.htm).__

## Utilisation

> Cette section expose en bref l'utilisation de marcxml2tei. ~Un [guide d'utilisation pas à pas](./guide.md) est également disponible~ 📔
 
__Transformation simple :__

```
saxon-xslt marcxml_sample/252383524.xml xslt/marcxml2tei-2.0.xslt > ouput.tei
```

__Transformation avancées :__

Certaines valeurs par défaut, comme le diplôme ou la langue secondaire du document, peuvent être changées lors de l'appel du moteur de tranformation XSLT.

```
saxon-xslt marcxml_sample/252383524.xml xslt/marcxml2tei-2.0.xslt defaultDegreeCode=23 secondaryLanguage=eng > output.tei
```

[Voir la liste complètes des paramètres disponibles](#paramètres)

## Paramètres

MarcXML2TEI expose les paramètres suivants au moteur XSLT:

* `primaryLanguage` [optionnel, valeur par défaut : 'fre'] : Définit la langue principale du document au format [ISO 639-2](https://www.loc.gov/standards/iso639-2/php/code_list.php). Même si il est renseigné, ce paramètre n'est utilisé que lorsque les données Unimarc sont insuffisantes pour déterminer la langue principale du document.
* `secondaryLanguage` [optionnel, valeur par défaut : 'eng'] : Définit la langue secondaire du document au format [ISO 639-2](https://www.loc.gov/standards/iso639-2/php/code_list.php). Même si il est renseigné, ce paramètre n'est utilisé que lorsque les données Unimarc sont insuffisantes pour déterminer la langue secondaire du document.
* `degreeCode` [optionnel] : Permet de remplacer la valeur du code diplôme utilisée par défaut : `23`. [Liste des codes diplômes](https://api.archives-ouvertes.fr/ref/metadataList/?q=metaName_s:dumas_degreeType&rows=100&fl=fr_metaLabel_s,metaValue_s).
* `fileLocation` [optionnel] : Spécifie l'emplacement du fichier. Ce paramètre peut prendre la forme d'un lien HTTP ou FTP.
* `embargoDate` : Définit une date d'embargo au format `AAAA-MM-JJ`. (xsl `2.0` uniquement)

## Génération des fichiers XSL

> Les différentes versions de marxml2tei peuvent êtres récupérées directement depuis la page release de ce dépôt.
> 
> Cette section s'adresse aux développeurs qui souhaitent « empaqueter » eux-mêmes les fichiers XSL dans différentes versions. 
> 
> La génération des fichiers XSL requiert l'installation de `make`, `xmllint` et de `saxon-xslt`.

__Version compatible Oracle (oracle.xsl)__

Produit une version compatible avec Oracle. Cette version ne contient ni les codes de langue ni les codes OAI qui doivent être gérés directement dans Oracle.

```
make oracle
```

__Version empaquetée XSL 1.0 (bundle.1.0.xsl)__

Produit une version compatible avec XSL 1.0. Le fichier XSL intègre l'ensemble des codes OAI et des codes de langue.

```
make bundle.1.0
```

__Version empaquetée XSL 2.0 (bundle.2.0.xsl)__

Produit une version compatible avec XSL 2.0. Le fichier XSL intègre l'ensemble des codes OAI et des codes de langue.

```
make bundle.2.0
```

## Organisation du dépôt

`.script/` : Contient les scripts qui permettent de générer les différentes versions du mapping marcxml2tei (oracle, bundle.1.0 et bundle.2.0). Ces scripts sont appelés par le Makefile.

`/commons` : Contient les fichiers XSL importés par les fichiers `xslt/marcxml2tei.*.xsl`. Ce dossier contient en particulier les mappings de code langue et les mappings de code OAI au format XSL, ainsi qu'un fichier XSL permetant d'enlever de manière récursive les noeuds vides (`commons/cleaner.xsl`).

`/mapping` : Contient les données brutes qui servent à créer dans le dossier `/commons` les mappings XSL pour les codes de langue et les codes OAI.

`/marcxml_sample` : Contient des exemples de documents universitaires au format marcxml. Les noms de fichiers correspondent à leur PPN.

`/schema` : Contient une copie du schéma Aofr utilisé par le CCSD.

`/template` : Contient des template XSL qui permettent de générer les différentes versions de marcxml2tei (bundle.1.0.xsl, bundle.2.0.xsl, oracle.xsl).

`/test` : Contient l'ensemble des tests xspec.

`/utils` : Contient des fichiers XSL qui permettent de générer à partir des données brutes du dossier `/mapping` des mappings au format XSL placés dans `/commons`.

`/xslt` : Contient les mappings marxcml2tei.
