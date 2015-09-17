#!/bin/sh

echo "ATTENTION"
echo "the colum-nmbers differ in every document"
echo "please look up the column-numbers"

# this is really dirty :)

# todo: we should split it to single columns and join them later



cat ../temp/jur.data 		|cut -f 1,2,4,5,9,15,37   	> ../temp/jur.d.column
cat ../temp/jur.headings 	|cut -f 1,2,4,5,9,15,37 	> ../temp/jur.h.column

cat ../temp/mpfr.headings       |cut -f 1,2,5,6,14      > ../temp/mpfr.d.column
cat ../temp/mpfr.data           |cut -f 1,2,5,6,14      > ../temp/mpfr.h.column

cat ../temp/medical.data 	|cut -f 1,2,5,6,14   	> ../temp/medical.d.column
cat ../temp/medical.headings 	|cut -f 1,2,5,6,14 	> ../temp/medical.h.column

cat ../temp/multi.data 		|cut -f 1,2,5,6,14   	> ../temp/multi.d.column
cat ../temp/multi.headings 	|cut -f 1,2,5,6,14 	> ../temp/multi.h.column

cat ../temp/short_1d21.data 	|cut -f 1,2,5,6,14   	> ../temp/short_1d21.d.column
cat ../temp/short_1d21.headings |cut -f 1,2,5,6,14 	> ../temp/short_1d21.h.column
