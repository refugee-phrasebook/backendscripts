#!/bin/sh

echo "this will run xelatex and create the pdf"

# run it twice
xelatex rpb-test-jur.tex
xelatex rpb-test-jur.tex

xelatex rpb-test-medical.tex
xelatex rpb-test-medical.tex

# do we need this???
#xelatex rpb-test-mpfr.tex
#xelatex rpb-test-mpfr.tex

xelatex rpb-test-multi.tex
xelatex rpb-test-multi.tex

xelatex rpb-test-short_1d21.tex
xelatex rpb-test-short_1d21.tex