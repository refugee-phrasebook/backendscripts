#!/bin/sh

echo "this will clean up downloaded data"
rm ../download/tsv/mpfr.tsv
rm ../download/tsv/jur.tsv
rm ../download/tsv/medical.tsv
rm ../download/tsv/multi.tsv
rm ../download/tsv/short_1d21.tsv


rm ../download/tsv/mpfr.tsv.timestamp
rm ../download/tsv/jur.tsv.timestamp
rm ../download/tsv/medical.tsv.timestamp
rm ../download/tsv/multi.tsv.timestamp
rm ../download/tsv/short_1d21.tsv.timestamp


echo "clean up temp"
rm ../temp/mpfr.*
rm ../temp/jur.*
rm ../temp/medical.*
rm ../temp/multi.*
rm ../temp/short_1d21.*

echo "clean up latex-temp"
rm ./minitex-*.aux
rm ./minitex-*.log
rm ./minitex-*.out
rm ./minitex-*.synctex.gz

echo "PLEASE MOVE THE PDF to a different location before you commit to git or upload the scripts"
echo "this keeps the source smaller"

mv ./minitex-*.pdf ../../../
