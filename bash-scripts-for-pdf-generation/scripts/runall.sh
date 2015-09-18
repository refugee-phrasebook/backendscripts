#!/bin/sh

bash 01_download.sh
bash 02_row_and_language.sh 
bash 03_check_syntax.sh 
bash 04_cut_the_first_lines.sh
bash 05_get_the_columns.sh 
bash 06_replace_tabulator_with_ampersand_MAC.sh 
bash 07_replace_shxxx.sh

bash createpdf.sh
