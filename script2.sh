#!/bin/bash
source = ~/home
dest = ~/opt
cp "$source"/*.txt "$dest"
cd "$dest"
ls *.txt
