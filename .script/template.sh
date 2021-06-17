#!/usr/bin/env bash

xmllint  --nofixup-base-uris --nsclean --noxincludenode "$1" --pretty 3 --format
