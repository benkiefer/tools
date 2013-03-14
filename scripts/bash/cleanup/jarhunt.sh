#!/bin/bash

searchDirectory=$1

echo -e "Scanning $(basename $searchDirectory)"

#find all jar files in a directory (recursively) that have at least a dash followed by 5 characters in the name.
for file in `find $searchDirectory -type f -regextype posix-egrep -regex ".*\-[0-9]{5,}.*jar"`
do
	echo -e "\t- Removing $(basename $file)"
	`rm $file`
done