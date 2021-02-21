#!/usr/bin/bash

mkdir -p output


while read url; do
	filename=$(echo "$url"|awk -F '://' '{print $2}'|sed 's/$/.txt/')
	touch output/$filename
	filename="output/$filename"	
	curl -sk $url -o $filename &> /dev/null
	echo "$filename created"
done

