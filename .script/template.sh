#!/usr/bin/env bash

xmllint --noxincludenode "$1" --pretty 3 --format
