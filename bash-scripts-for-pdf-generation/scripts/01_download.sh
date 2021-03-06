#!/bin/sh

# if wget complains about certificates add –no-check-certificate as a workaround :)

# make directories if not there
mkdir -p ../download/tsv/
mkdir -p ../temp/

timestamp=`date -j -u +%Y-%m-%dT%H:%M:%S%z`

echo "$timestamp"

# confusing: what sources to use

wget  --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1D21SK15oYTRrCWMEi8J6txiCWCYkuhEbkSqSCqGAQx4/export?format=tsv" \
-O ../download/tsv/short_1d21.tsv
echo "$timestamp" > ../download/tsv/short_1d21.tsv.timestamp


# alternative - short
# https://docs.google.com/spreadsheets/d/1IpkETNzRzletRpLEeLUKAldB2j_O8UJVn1zM_sYg56Y/gid=418287843&export?format=tsv"

# a published version - short
# https://docs.google.com/spreadsheets/d/10Ch8eIACzROPYql5aztkG3_VvdCdkDInnVVK7QPK2E0/pubhtml?gid=418287843&single=true

wget  --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1IpkETNzRzletRpLEeLUKAldB2j_O8UJVn1zM_sYg56Y/export?format=tsv" \
-O ../download/tsv/multi.tsv
echo "$timestamp" > ../download/tsv/multi.tsv.timestamp


wget  --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1wjmRrkN9WVB4KIeKBy8wDDJ8E51Mh2-JxIBy2KNMFRQ/export?format=tsv" \
-O ../download/tsv/mpfr.tsv
echo "$timestamp" > ../download/tsv/mpfr.tsv.timestamp

wget  --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1H2b1vFHTM5PDXu7bAVJqw9giF8Tyn7bLcw9WqgIq3Rs/export?format=tsv" \
-O ../download/tsv/medical.tsv
echo "$timestamp" > ../download/tsv/medical.tsv.timestamp

# another one
# https://docs.google.com/spreadsheets/d/1wjmRrkN9WVB4KIeKBy8wDDJ8E51Mh2-JxIBy2KNMFRQ/edit#gid=0

wget  --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1D7jo-tAyQkmfYvVyT27nZ93ZkyFcZg2vEvf4OMbXJ_c/export?format=tsv&gid=0" \
-O ../download/tsv/jur.tsv
echo "$timestamp" > ../download/tsv/jur.tsv.timestamp


# temporary fix with iso-639-3-codes
wget  --tries=1 -q \
"https://docs.google.com/spreadsheets/d/1PwMnm52TUlz0TfpQc9jXIgm-kPfJf_iTymzw4yj4lZ0/export?format=tsv&gid=0" \
-O ../download/tsv/short_1pwmnm.tsv
echo "$timestamp" > ../download/tsv/short_1pwmnm.tsv.timestamp
