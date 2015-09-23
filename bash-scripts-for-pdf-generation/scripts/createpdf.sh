#!/bin/sh

echo "this will run xelatex and create the pdf"

# catch up with longtable algorithm - running it 4 times might clean up 

xelatex minitex-jur.tex
xelatex minitex-jur.tex
xelatex minitex-jur.tex
xelatex minitex-jur.tex

xelatex minitex-med.tex
xelatex minitex-med.tex
xelatex minitex-med.tex
xelatex minitex-med.tex

xelatex minitex-multi.tex
xelatex minitex-multi.tex
xelatex minitex-multi.tex
xelatex minitex-multi.tex

#xelatex rpb-test-jur.tex

#xelatex rpb-test-medical.tex

# do we need this???
#xelatex rpb-test-mpfr.tex

#xelatex rpb-test-multi.tex

#xelatex rpb-test-short_1d21.tex
