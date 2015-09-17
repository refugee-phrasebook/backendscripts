#!/bin/sh

###

sed 's/_/\./g'  ../temp/jur.h.amp > ../temp/jur.h.1
sed 's/_/\./g'  ../temp/jur.d.amp > ../temp/jur.d.1

sed 's/\\/ \\textbackslash /g'  ../temp/jur.d.1 > ../temp/jur.d.2
sed 's/\\/ \\textbackslash /g'  ../temp/jur.h.1 > ../temp/jur.h.2


sed 's/$/ \\\\ /g'  ../temp/jur.d.2 > ../temp/jur.d.bs
sed 's/$/ \\\\ /g'  ../temp/jur.h.2 > ../temp/jur.h.bs
###
sed 's/_/\./g'  ../temp/medical.h.amp > ../temp/medical.h.1
sed 's/_/\./g'  ../temp/medical.d.amp > ../temp/medical.d.1

sed 's/\\/ \\textbackslash /g'  ../temp/medical.d.1 > ../temp/medical.d.2
sed 's/\\/ \\textbackslash /g'  ../temp/medical.h.1 > ../temp/medical.h.2


sed 's/$/ \\\\ /g'  ../temp/medical.d.2 > ../temp/medical.d.bs
sed 's/$/ \\\\ /g'  ../temp/medical.h.2 > ../temp/medical.h.bs

###
sed 's/_/\./g'  ../temp/mpfr.h.amp > ../temp/mpfr.h.1
sed 's/_/\./g'  ../temp/mpfr.d.amp > ../temp/mpfr.d.1

sed 's/\\/ \\textbackslash /g'  ../temp/mpfr.d.1 > ../temp/mpfr.d.2
sed 's/\\/ \\textbackslash /g'  ../temp/mpfr.h.1 > ../temp/mpfr.h.2


sed 's/$/ \\\\ /g'  ../temp/mpfr.d.2 > ../temp/mpfr.d.bs
sed 's/$/ \\\\ /g'  ../temp/mpfr.h.2 > ../temp/mpfr.h.bs

###

sed 's/_/\./g'  ../temp/multi.h.amp > ../temp/multi.h.1
sed 's/_/\./g'  ../temp/multi.d.amp > ../temp/multi.d.1

sed 's/\\/ \\textbackslash /g'  ../temp/multi.d.1 > ../temp/multi.d.2
sed 's/\\/ \\textbackslash /g'  ../temp/multi.h.1 > ../temp/multi.h.2


sed 's/$/ \\\\ /g'  ../temp/multi.d.2 > ../temp/multi.d.bs
sed 's/$/ \\\\ /g'  ../temp/multi.h.2 > ../temp/multi.h.bs
###
sed 's/_/\./g'  ../temp/medical.h.amp > ../temp/medical.h.1
sed 's/_/\./g'  ../temp/medical.d.amp > ../temp/medical.d.1

sed 's/\\/ \\textbackslash /g'  ../temp/medical.d.1 > ../temp/medical.d.2
sed 's/\\/ \\textbackslash /g'  ../temp/medical.h.1 > ../temp/medical.h.2


sed 's/$/ \\\\ /g'  ../temp/medical.d.2 > ../temp/medical.d.bs
sed 's/$/ \\\\ /g'  ../temp/medical.h.2 > ../temp/medical.h.bs
###
sed 's/_/\./g'  ../temp/short_1d21.h.amp > ../temp/short_1d21.h.1
sed 's/_/\./g'  ../temp/short_1d21.d.amp > ../temp/short_1d21.d.1

sed 's/\\/ \\textbackslash /g'  ../temp/short_1d21.d.1 > ../temp/short_1d21.d.2
sed 's/\\/ \\textbackslash /g'  ../temp/short_1d21.h.1 > ../temp/short_1d21.h.2


sed 's/$/ \\\\ /g'  ../temp/short_1d21.d.2 > ../temp/short_1d21.d.bs
sed 's/$/ \\\\ /g'  ../temp/short_1d21.h.2 > ../temp/short_1d21.h.bs
