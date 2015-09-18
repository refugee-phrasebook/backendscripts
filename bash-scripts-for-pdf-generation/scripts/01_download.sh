#!/bin/sh

# if wget complains about certificates add –no-check-certificate as a workaround :)

# make directories if not there
mkdir -p ../download/tsv/
mkdir -p ../temp/


# confusing: what sources to use

wget --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1D21SK15oYTRrCWMEi8J6txiCWCYkuhEbkSqSCqGAQx4/export?format=tsv" \
-O ../download/tsv/short_1d21.tsv

# alternative - short
# https://docs.google.com/spreadsheets/d/1IpkETNzRzletRpLEeLUKAldB2j_O8UJVn1zM_sYg56Y/gid=418287843&export?format=tsv"

# a published version - short
# https://docs.google.com/spreadsheets/d/10Ch8eIACzROPYql5aztkG3_VvdCdkDInnVVK7QPK2E0/pubhtml?gid=418287843&single=true

wget --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1IpkETNzRzletRpLEeLUKAldB2j_O8UJVn1zM_sYg56Y/export?format=tsv" \
-O ../download/tsv/multi.tsv


wget --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1wjmRrkN9WVB4KIeKBy8wDDJ8E51Mh2-JxIBy2KNMFRQ/export?format=tsv" \
-O ../download/tsv/mpfr.tsv

wget --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1H2b1vFHTM5PDXu7bAVJqw9giF8Tyn7bLcw9WqgIq3Rs/export?format=tsv" \
-O ../download/tsv/medical.tsv

# another one
# https://docs.google.com/spreadsheets/d/1wjmRrkN9WVB4KIeKBy8wDDJ8E51Mh2-JxIBy2KNMFRQ/edit#gid=0

wget --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1D7jo-tAyQkmfYvVyT27nZ93ZkyFcZg2vEvf4OMbXJ_c/export?format=tsv&gid=0" \
-O ../download/tsv/jur.tsv
