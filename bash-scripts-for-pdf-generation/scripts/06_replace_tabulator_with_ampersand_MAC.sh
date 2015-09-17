#!/bin/sh

# seems there are problems in tab-replacement
# this is the mac-version

sed 's/	/ \& /g' ../temp/mpfr.d.column 		> ../temp/mpfr.d.amp
sed 's/	/ \& /g' ../temp/mpfr.h.column 		> ../temp/mpfr.h.amp

sed 's/	/ \& /g' ../temp/jur.d.column 		> ../temp/jur.d.amp
sed 's/	/ \& /g' ../temp/jur.h.column 		> ../temp/jur.h.amp

sed 's/	/ \& /g' ../temp/medical.d.column 	> ../temp/medical.d.amp
sed 's/	/ \& /g' ../temp/medical.h.column 	> ../temp/medical.h.amp

sed 's/	/ \& /g' ../temp/multi.d.column 	> ../temp/multi.d.amp
sed 's/	/ \& /g' ../temp/multi.h.column 	> ../temp/multi.h.amp

sed 's/	/ \& /g' ../temp/short_1d21.d.column	> ../temp/short_1d21.d.amp
sed 's/	/ \& /g' ../temp/short_1d21.h.column	> ../temp/short_1d21.h.amp
