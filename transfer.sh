#!/usr/bin/env bash

base="../classes/solutions"

trash turing sorting maze
mkdir -p turing sorting maze
cp -r "$base"/tech/turing/* turing
cp -r "$base"/cs3/sorting/*.html sorting
cp -r "$base"/cs3/sorting/maze.html maze

echo "# Links" > README.md
echo "" >> README.md
find . -type f -name "*.html" | sed 's/\(.*\)/\- [\1](\1)/' >> README.md
