#!/bin/sh

cat iso-639-3.tab |tail -n +2|cut -f 1,7 > iso-639-3_Id-Ref_Name.tab
cat iso-639-3.tab |tail -n +2|cut -f 1,7 |sort -k 2 > iso-639-3_Id-Ref_Name_sortbyname.tab

tail -n +2 iso-639-3-macrolanguages.tab |sort -k 2 |cut -f 1,2 > iso-639-3-macrolanguages_sort_by_micro.tab
tail -n +2 iso-639-3-macrolanguages.tab | cut -f 1 |sort | uniq> iso-639-3-macrolist.tab
