#!/bin/sh

# this should really not be hardcoded as it is

echo "cut empty lines and leave the tail ..."

sed '/^[[:space:]]*$/d' ../download/tsv/jur.tsv      	> ../temp/jur.tsv2 
sed '/^[[:space:]]*$/d' ../download/tsv/medical.tsv 	> ../temp/medical.tsv2
sed '/^[[:space:]]*$/d' ../download/tsv/mpfr.tsv 	> ../temp/mpfr.tsv2
sed '/^[[:space:]]*$/d' ../download/tsv/multi.tsv	> ../temp/multi.tsv2
sed '/^[[:space:]]*$/d' ../download/tsv/short_1d21.tsv	> ../temp/short_1d21.tsv2
sed '/^[[:space:]]*$/d' ../download/tsv/short_1pwmnm.tsv	> ../temp/short_1pwmnm.tsv2

# striptease
# cut unneeded comments in first lines
tail -n +2 ../temp/jur.tsv2      > ../temp/jur.tail
tail -n +3 ../temp/medical.tsv2  > ../temp/medical.tail
tail -n +2 ../temp/mpfr.tsv2     > ../temp/mpfr.tail
tail -n +2 ../temp/multi.tsv2    > ../temp/multi.tail
tail -n +1 ../temp/short_1d21.tsv2 > ../temp/short_1d21.tail
tail -n +1 ../temp/short_1pwmnm.tsv2 > ../temp/short_1pwmnm.tail
#tail -n +3 ../temp/short_1d21.tsv2 > ../temp/short_1ipk.tail

echo "cut the headings"
head -1 ../temp/jur.tail      > ../temp/jur.headings
head -1 ../temp/medical.tail  > ../temp/medical.headings
head -1 ../temp/mpfr.tail     > ../temp/mpfr.headings
head -1 ../temp/multi.tail    > ../temp/multi.headings
head -1 ../temp/short_1d21.tail > ../temp/short_1d21.headings
head -1 ../temp/short_1pwmnm.tail > ../temp/short_1pwmnm.headings
#head -1 ../temp/short_1d21.tail > ../temp/short_1ipk.headings

echo "extract rest of data"
tail -n +2 ../temp/jur.tail      > ../temp/jur.data
tail -n +2 ../temp/medical.tail  > ../temp/medical.data
tail -n +2 ../temp/mpfr.tail     > ../temp/mpfr.data
tail -n +2 ../temp/multi.tail    > ../temp/multi.data
tail -n +2 ../temp/short_1d21.tail > ../temp/short_1d21.data
tail -n +4 ../temp/short_1pwmnm.tail > ../temp/short_1pwmnm.data
#tail -n +2 ../temp/short_1d21.tail > ../temp/short_1ipk.data
