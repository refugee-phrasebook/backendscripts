#!/bin/sh

wget -q \
"http://www-01.sil.org/iso639-3/iso-639-3-macrolanguages.tab" \
-O iso-639-3-macrolanguages.tab

wget -q \
"http://www-01.sil.org/iso639-3/iso-639-3_Name_Index.tab" \
-O iso-639-3_Name_Index.tab

wget -q \
"http://www-01.sil.org/iso639-3/iso-639-3.tab" \
-O iso-639-3.tab
