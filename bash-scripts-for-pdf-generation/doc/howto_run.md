short:
edit 05_get_the_columns.sh to change the languages
run the scripts 01-07
run XeLaTex twice
pdf should be ready

whenever you edit the languages you need to rerun 
bash 05_get_the_columns.sh  && bash 06_replace_tabulator_with_ampersand.sh && bash 07_replace_shxxx.sh 


Longer:
please use the scripts contained in directory scripts

they are numbered to give you a hint on what to do 

please start with 01...

to decice what language to use please edit 05_get_the_columns.sh
the columns are numbered 

the last one for the moment is 07_replace_shxxx.sh

after you run all scripts you may run latex - tested using TeX Live 2015 on Mac using XeLaTex
on first run there might be some message about refreshing fonts-database - this might take a moment
there is an example document scripts/rpb-test-longtable.tex
it will produce a rpb-test-longtable.pdf
please rerun it always twice to refresh all references in the pdf

CHANGE LANGUAGE:
edit 05_get_the_columns.sh
bash 05_get_the_columns.sh  && bash 06_replace_tabulator_with_ampersand.sh && bash 07_replace_shxxx.sh
run latex on rpb-test-longtable.tex (or the tex-file you want to use)


CHANGE NUMBER OF COLUMNS
please also edit the latex-file to reflect the correct number of columns

CHANGE FONTS for all
edit the tex

please be aware - the numbering is not really correct as there are some parsing issues we need to catch
example if you want german + arabic (fusha) use -f 1,3
please refer to https://en.wikibooks.org/wiki/Refugee_Phrasebook/documentation-overview

the order of the columns can not be changed at the moment
CHANGE FONT FOR SINGLE COLUMNS
not at the moment
