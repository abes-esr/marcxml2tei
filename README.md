<div align="center">

# MarcXML2TEI

_Conversion de documents MarcXML en TEI_

[![Release](https://github.com/abes-esr/marcxml2tei/actions/workflows/release.yml/badge.svg?style=for-the-badge)](https://github.com/abes-esr/marcxml2tei/actions/workflows/release.yml)
[![Latest Build](https://img.shields.io/badge/%F0%9F%93%A6%20lastest%20build-marcxml2tei.xsl-yellow?style=for-the-badge)](https://github.com/abes-esr/marcxml2tei/releases/latest/download/marcxml2tei.xsl)
[![GitHub release](https://img.shields.io/github/release/abes-esr/marcxml2tei.svg?style=for-the-badge)](https://github.com/abes-esr/marcxml2tei/releases/latest)
[![Contribution Welcome](https://img.shields.io/badge/contribution-welcome-green.svg?style=for-the-badge)](https://github.com/abes-esr/marcxml2tei/pulls)
[![license](https://img.shields.io/badge/license-CeCILL%202.1-blue.svg?style=for-the-badge)](https://cecill.info/licences/Licence_CeCILL_V2.1-en.txt)

</div>

MarcXML2TEI permet de produire à partir de notices bibliographiques de documents universitaires [MarcXML](http://documentation.abes.fr/sudoc/manuels/administration/aidewebservices/index.html#SudocMarcXML), des notices TEI. Ces notices peuvent être importées dans HAL grâce au [WebService](https://fil.abes.fr/2022/02/23/sudoc-et-dumas-faciliter-le-signalement-des-documents-universitaires/) du même nom.


> 📝 __MarcXML2TEI ne prend en charge que les notices Unimarc conformes aux [consignes de catalogage des documents universitaires hors thèses](http://documentation.abes.fr/sudoc/regles/Catalogage/Regles_Theses_AutresDocsUniv.htm).__

## API

[Documentation de l'API](https://petstore.swagger.io/?url=https%3A%2F%2Fraw.githubusercontent.com%2Fabes-esr%2Fmarcxml2tei%2Fmain%2Fmarcxml2tei-OpenAPI-schema.yaml)

## Utilisation

```
saxon-xslt marcxml_sample/252383524.xml xslt/marcxml2tei-1.0.xslt > ouput.tei
```

## Génération des fichiers XSL

> Les différentes versions de marxml2tei peuvent êtres récupérées directement depuis la page [release](https://github.com/abes-esr/marcxml2tei/releases/latest) de ce dépôt.
> 
> Cette section s'adresse aux développeurs qui souhaitent « empaqueter » eux-mêmes les fichiers XSL dans différentes versions. 
> 
> La génération des fichiers XSL requiert l'installation de `make`, `xmllint` et de `saxon-xslt`.

__Version compatible Oracle (oracle.xsl)__

Produit une version compatible avec Oracle. Cette version ne contient ni les codes de langue ni les codes OAI qui doivent être gérés directement dans Oracle.

```
make oracle
```

__Version empaquetée XSL 1.0 (bundle.xsl)__

Produit une version compatible avec XSL 1.0. Le fichier XSL intègre l'ensemble des codes OAI et des codes de langue.

```
make bundle
```

## Organisation du dépôt

[`scripts/`](scripts) : Contient les scripts qui permettent de générer les différentes versions de marcxml2tei (oracle et bundle). Ces scripts sont appelés par le Makefile.

[`mapping/`](mapping) : Contient les données brutes qui servent à créer les mappings XSL pour les codes de langue et les codes OAI.

[`sample/`](sample) : Contient des exemples de documents universitaires au format marcxml. Les noms de fichiers correspondent à leur PPN.

[`schema/`](schema) : Contient une copie du schéma Aofr utilisé par le CCSD.

[`template/`](template) : Contient des template XSL qui permettent de générer les différentes versions de marcxml2tei (oracle.xsl et bundle.xsl).

[`tests/`](tests) : Contient l'ensemble des tests xspec.

[`utils/`](utils) : Contient des fichiers XSL qui permettent de générer à partir des données brutes du dossier [`mapping/`](mapping) des mappings au format XSL.

[`xslt/`](xslt) : Contient les mappings marxcml2tei.
