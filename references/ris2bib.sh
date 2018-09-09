#!/bin/sh

# Super simple script for my own use
# Takes a ris file and adds it to refs.bib
# TODO: error checking, archiving/deleting ris/checking for dupes


# I like to keep a references directory and run this script from that folder.
# This lets me maintain a refs.bib file one directory up and keep things clean.
ris2xml $1 | xml2bib >> ../refs.bib

echo ""
echo "$0 ended."
