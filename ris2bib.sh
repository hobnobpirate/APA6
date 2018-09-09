#!/bin/sh

# Super simple script for my own use
# Takes a ris file and adds it to refs.bib
# TODO: error checking, archiving/deleting ris/checking for dupes

ris2xml $1 | xml2bib >> ../refs.bib

echo ""
echo "$0 ended."
