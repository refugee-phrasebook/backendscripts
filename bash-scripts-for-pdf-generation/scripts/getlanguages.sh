#!/bin/sh

# overwrite by > and then append the rest
head -2 ../download/tsv/jur.tsv  |tail -1  |tr -s '\t' '\n' > languages
head -1 ../download/tsv/short_1d21.tsv  |tail -1  |tr -s '\t' '\n'| >> languages 
head -3 ../download/tsv/medical.tsv  |tail -1  |tr -s '\t' '\n' >> languages 
head -1 ../download/tsv/short_1d21.tsv  |tail -1  |tr -s '\t' '\n'>> languages 
head -3 ../download/tsv/mpfr.tsv  |tail -1  |tr -s '\t' '\n' >> languages 
head -2 ../download/tsv/multi.tsv  |tail -1  |tr -s '\t' '\n' >> languages 
sort languages|uniq > languages
