#!/bin/sh

echo "this is the juridical"
head -3 ../download/tsv/jur.tsv  |tail -1  |tr -s '\t' '\n'|nl

echo "this is the short 1d21"
head -3 ../download/tsv/short_1d21.tsv  |tail -1  |tr -s '\t' '\n'|nl

#echo "this is the short 1d21"
#head -3 ../download/tsv/short_1ipk.tsv  |tail -1  |tr -s '\t' '\n'|nl

echo "this is the medical"
head -3 ../download/tsv/medical.tsv  |tail -1  |tr -s '\t' '\n'|nl

echo "this is the medical - MPfR"
head -3 ../download/tsv/mpfr.tsv  |tail -1  |tr -s '\t' '\n'|nl

echo "this is the multi"
head -2 ../download/tsv/multi.tsv  |tail -1  |tr -s '\t' '\n'|nl
echo "row 11???"

echo "keep it as a reference as you will need it for selecting rows"
