#!/bin/sh
#run this from the references folder (symlink in path works well)

ris2xml=/usr/bin/ris2xml
xml2bibopts='-fc -w -nb'
xml2bib=/usr/bin/xml2bib
bib_file=../refs.bib
arch_dir=./archive
tmp_ris=./archive/tmp.ris

mkdir -p $arch_dir

for ris_file in $( ls *.ris ); do
	$ris2xml $ris_file | $xml2bib $xml2bibopts >> $bib_file
	#mv $ris_file $arch_dir/$ris_file
done

vim $bib_file
