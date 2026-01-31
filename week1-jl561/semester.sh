#!/usr/bin/env bash

README="README.md"
mkdir "$1"
echo "Created semester directory: $1"
cd $1

for class in "${@:2}"; do #Over all cmd line args starting at 2nd
    mkdir "$class"
done
    echo Created course directories:"${@:2}"

touch "$README"
echo "$1" >> "README.md"
date >> README.md
echo "Lorem ipsum comp freshman" >> README.md
echo "Created README.md"

