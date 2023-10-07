#!/usr/bin/bash

filepath=~/Documents/Defaults/pygame

mkdir $1

files=("main.py")

for file in "${files[@]}"; do
	cp -r $filepath/$file $1/$file
done

echo "Finished $1"
