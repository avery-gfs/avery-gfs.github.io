#!/usr/bin/env bash

base="../classes/solutions"

trash turing sorting
mkdir -p turing sorting
cp -r "$base"/tech/turing/* turing
cp -r "$base"/cs3/sorting/*.html sorting

echo "<!DOCTYPE html>" > index.html
echo "<html lang=\"en\">" >> index.html
echo "<head>" >> index.html
echo "    <meta charset=\"UTF-8\">" >> index.html
echo "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" >> index.html
echo "    <title>File Links</title>" >> index.html
echo "</head>" >> index.html
echo "<body>" >> index.html
echo "<h1>Links</h1>" >> index.html
echo "<ul>" >> index.html

find . -type f -name "*.html" | sed 's|\(.*\)|    <li><a href="\1">\1</a></li>|' >> index.html

echo "</ul>" >> index.html
echo "</body>" >> index.html
echo "</html>" >> index.html
