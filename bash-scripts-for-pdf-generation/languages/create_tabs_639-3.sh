#!/bin/sh

cat iso-639-3.tab |tail -n +2|cut -f 1,7 > iso-639-3_Id-Ref_Name.tab

sort -k 2 iso-639-3-macrolanguages.tab |cut -f1,2|tail -n +2 > iso-639-3-macrolanguages_sort_by_micro.tab
