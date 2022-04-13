#!/usr/bin/env bash

mkdir -p /tmp/saxon
export SAXON_CP=/tmp/saxon/saxon9he.jar
wget -O "${SAXON_CP}" https://repo1.maven.org/maven2/net/sf/saxon/Saxon-HE/9.9.1-7/Saxon-HE-9.9.1-7.jar