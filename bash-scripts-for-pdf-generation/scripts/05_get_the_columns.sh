#!/bin/sh

echo "ATTENTION"
echo "the colum-nmbers differ in every document"
echo "please look up the column-numbers"

# this is really dirty :)

# todo: we should split it to single columns and join them later



#cat ../temp/jur.data 		|cut -f 1,2,3,5,18,31 	> ../temp/jur.d.column
cat ../temp/jur.data 		|cut -f 1,2,3,8	 	> ../temp/jur.d.column
cat ../temp/jur.headings 	|cut -f 1,2,3,8 		> ../temp/jur.h.column

# seems this is unused - need feedback
cat ../temp/mpfr.headings |cut -f 1 > ../temp/mpfr.d.column
cat ../temp/mpfr.data |cut -f 1 > ../temp/mpfr.h.column

cat ../temp/medical.data 	|cut -f 1,3,5 	> ../temp/medical.d.column
cat ../temp/medical.headings 	|cut -f 1,3,5	 	> ../temp/medical.h.column

cat ../temp/multi.data 		|cut -f 2,4,6,7,10 	> ../temp/multi.d.column
cat ../temp/multi.headings 	|cut -f 2,4,6,7,10 	> ../temp/multi.h.column

cat ../temp/short_1d21.data 	|cut -f 1,2,3,5,8,18 	> ../temp/short_1d21.d.column
cat ../temp/short_1d21.headings |cut -f 1,2,3,5,8,18 	> ../temp/short_1d21.h.column


# starting with beta
# 
#
# get the numbers of columns 
LANGUAGE_LINE_SHORT_1pwmnm=`awk 'NR==1' ../download/tsv/short_1pwmnm.tsv`
echo $LANGUAGE_LINE_SHORT_1pwmnm
LINEUP_LANGUAGES_SHORT=`awk 'NR==1'  ../download/tsv/short_1pwmnm.tsv|tr '\t' '\n'|nl -b a`
echo $LINEUP_LANGUAGES_SHORT
COUNT_COLUMNS_short_1pwmnm=`awk 'NR==1'  ../download/tsv/short_1pwmnm.tsv|tr '\t' '\n'|wc -l`

echo "we have $COUNT_COLUMNS_short_1pwmnm columns in short_1pwmnm.tsv"


# catch duplicates
DUPLICATES_SHORT=`awk 'NR==1'  ../download/tsv/short_1pwmnm.tsv|tr '[:space:]' '\n'|sort|uniq -d`

if [ "$DUPLICATES_SHORT" != "" ]; then
	echo "WARNING: we have duplicate language names!!!"
	# todo: show which ones/which columns
	echo duplicate language: $DUPLICATES_SHORT
else
	echo "good: we have no duplicate languages"
fi

# cut the columns
for (( col=1; col<=$COUNT_COLUMNS_short_1pwmnm;col++))
do
	echo "working on $col"
	language=`cut -f $col ../temp/short_1pwmnm.headings `
	# catch all empty languages
	# the dataset has empty languages in col 2, 54
	if [ "$language" = ""	]; then
		echo "WARNING WARNING WARNING: Column $col has no language set"
		echo "we will use this as a filename: ../temp/short_1pwmnm.headings."$col
	# catch the duplicates - TODO: THIS NEEDS TO CATCH ALL-just for the moment it is hardcoded for testing
	# the dataset has duplicates in col 15+16, 55+56
	elif [ "$language" = "a"   ]; then
		echo "WARNING WARNING WARNING: this is a dupicate column: $col"
                echo "we will use this as a filename: ../temp/short_1pwmnm.headings."$col
	else
		echo "use this one ../temp/short_1pwmnm.headings."$language
	fi
done
