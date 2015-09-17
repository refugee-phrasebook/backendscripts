#!/bin/sh

echo "this will clean up downloaded data"
rm ../download/tsv/mpfr.tsv
rm ../download/tsv/jur.tsv
rm ../download/tsv/medical.tsv
rm ../download/tsv/multi.tsv
rm ../download/tsv/short_1d21.tsv

rm ../download/tsv/mpfr.tsv2
rm ../download/tsv/jur.tsv2
rm ../download/tsv/medical.tsv2
rm ../download/tsv/multi.tsv2
rm ../download/tsv/short_1d21.tsv2



echo "clean up temp"
rm ../temp/mpfr.*
rm ../temp/jur.*
rm ../temp/medical.*
rm ../temp/multi.*
rm ../temp/short_1d21.*

echo "clean up latex-temp"
rm ./rpb-test-*.aux
rm ./rpb-test-*.log
rm ./rpb-test-*.out
rm ./rpb-test-*.synctex.gz

echo "PLEASE MOVE THE PDF to a different location before you commit to git or upload the scripts"
echo "this keeps the source smaller"

mv ./rpb-test-*.pdf ../../../
