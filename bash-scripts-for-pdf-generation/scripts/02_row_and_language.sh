#!/bin/sh

echo "this is the juridical"
#head -2 ../download/tsv/jur.tsv |tail -1 | tr -s '\t' '\n' | nl -b a
awk 'NR==2' ../download/tsv/jur.tsv | tr '\t' '\n'|nl -b a
awk 'NR==2' ../download/tsv/jur.tsv | tr '\t' '\n'| wc -l

echo "this is the short 1d21"
#head -1 ../download/tsv/short_1d21.tsv |tail -1 |tr -s '\t' '\n'|nl -b a
awk 'NR==1' ../download/tsv/short_1d21.tsv | tr '\t' '\n' | nl -b a
awk 'NR==1' ../download/tsv/short_1d21.tsv | tr '\t' '\n' | wc -l

echo "this is the medical"
#head -3 ../download/tsv/medical.tsv |tail -1 |tr -s '\t' '\n'|nl -b a
awk 'NR==3' ../download/tsv/medical.tsv | tr '\t' '\n'|nl -b a
awk 'NR==3' ../download/tsv/medical.tsv | tr '\t' '\n'|wc -l

echo "this is the medical - MPfR"
#head -3 ../download/tsv/mpfr.tsv |tail -1 |tr -s '\t' '\n'|nl -b a
awk 'NR==3' ../download/tsv/mpfr.tsv | tr '\t' '\n'|nl -b a
awk 'NR==3' ../download/tsv/mpfr.tsv | tr '\t' '\n'|wc -l

echo "this is the multi"
#head -2 ../download/tsv/multi.tsv |tail -1 |tr -s '\t' '\n'|nl -b a
#echo "row 11???"

awk 'NR==2'  ../download/tsv/multi.tsv | tr '\t' '\n'|nl -b a
awk 'NR==2' ../download/tsv/multi.tsv | tr '\t' '\n'|wc -l

echo "keep it as a reference as you will need it for selecting rows"

echo "BETA this is a quickfix short 1pwmnm"
awk 'NR==1'  ../download/tsv/short_1pwmnm.tsv|tr '\t' '\n'|nl -b a
awk 'NR==1'  ../download/tsv/short_1pwmnm.tsv|tr '\t' '\n'|wc -l
