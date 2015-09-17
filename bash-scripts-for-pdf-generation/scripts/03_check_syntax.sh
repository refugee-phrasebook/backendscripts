#!/bin/sh

echo "we will check the data if it contains any symbols that might stop latex from working"

echo "looking for pipe"
egrep -R '\|' -n ../download/tsv/*

echo "looking for ampersand"
egrep -R '\&' -n ../download/tsv/*

echo "looking for backslash"
egrep -R '\\' -n ../download/tsv/*



echo "if nothing found ... good - else: please clean up the mess before proceding"
echo "you can find the coresponding line-numbers above"
echo "maybe you can replace these with ... or , (commas)?"
