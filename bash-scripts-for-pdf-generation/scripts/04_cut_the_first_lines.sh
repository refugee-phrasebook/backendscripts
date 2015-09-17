#!/bin/sh

# this should really not be hardcoded as it is

echo "cut empty lines and leave the tail ..."

sed '/^[[:space:]]*$/d' ../download/tsv/jur.tsv      	> ../download/tsv/jur.tsv2 
sed '/^[[:space:]]*$/d' ../download/tsv/medical.tsv 	> ../download/tsv/medical.tsv2
sed '/^[[:space:]]*$/d' ../download/tsv/mpfr.tsv 	> ../download/tsv/mpfr.tsv2
sed '/^[[:space:]]*$/d' ../download/tsv/multi.tsv	> ../download/tsv/multi.tsv2
sed '/^[[:space:]]*$/d' ../download/tsv/short_1d21.tsv	> ../download/tsv/short_1d21.tsv2

# striptease

tail -n +2 ../download/tsv/jur.tsv2      > ../temp/jur.tail
tail -n +3 ../download/tsv/medical.tsv2  > ../temp/medical.tail
tail -n +2 ../download/tsv/mpfr.tsv2     > ../temp/mpfr.tail
tail -n +2 ../download/tsv/multi.tsv2    > ../temp/multi.tail
tail -n +2 ../download/tsv/short_1d21.tsv2 > ../temp/short_1d21.tail
#tail -n +3 ../download/tsv/short_1d21.tsv2 > ../temp/short_1ipk.tail

echo "cut the headings"
head -1 ../temp/jur.tail      > ../temp/jur.headings
head -1 ../temp/medical.tail  > ../temp/medical.headings
head -1 ../temp/mpfr.tail     > ../temp/mpfr.headings
head -1 ../temp/multi.tail    > ../temp/multi.headings
head -1 ../temp/short_1d21.tail > ../temp/short_1d21.headings
#head -1 ../temp/short_1d21.tail > ../temp/short_1ipk.headings

echo "extract rest of data"
tail -n +2 ../temp/jur.tail      > ../temp/jur.data
tail -n +2 ../temp/medical.tail  > ../temp/medical.data
tail -n +2 ../temp/mpfr.tail     > ../temp/mpfr.data
tail -n +2 ../temp/multi.tail    > ../temp/multi.data
tail -n +2 ../temp/short_1d21.tail > ../temp/short_1d21.data
#tail -n +2 ../temp/short_1d21.tail > ../temp/short_1ipk.data
