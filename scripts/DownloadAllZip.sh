#!/bin/bash
# Batch ZIP Downloader
# By Omid


BASEURL = $1

echo "$BASEURL"

mkdir -p linkscraps

wget --verbose \
	 --directory-prefix=linkscraps \
	 --recursive \
	 --level=1 \
	 --no-parent\
	 --no-directories\
	 $BASEURL


egrep -o -h 'http?://[^ ]+zip' linkscraps/* | xargs -l1 wget

rm -rf linkscraps
