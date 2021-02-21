#!/bin/bash

mkdir -p out

while read line;do
	echo "$line being processed"
	findomain --output --target $line
	echo -ne "\n\n\n"
done
