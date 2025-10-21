#!/usr/bin/env bash

base="../classes/solutions"

trash turing sorting
mkdir -p turing sorting
cp -r "$base"/tech/turing/* turing
cp -r "$base"/cs3/sorting/*.html sorting

echo "# Links" > README.md
echo "" >> README.md
find . -type f -name "*.html" | sed 's/\(.*\)/\- [\1](\1)/' >> README.md
