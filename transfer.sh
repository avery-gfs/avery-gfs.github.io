#!/usr/bin/env bash

base="../classes/solutions"

mkdir -p turing
cp -r "$base/tech/turing/index.html" turing

mkdir -p sorting
pwd
cp -r "$base"/cs3/sorting/*.html sorting

echo "# Pages" > README.md
echo "" >> README.md
find . -type f -name "*.html" | sed 's/\(.*\)/\- [\1](\1)/' >> README.md
