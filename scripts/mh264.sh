#!/bin/bash

# Check the arguments
if [[ 0 -eq $# ]]
then
	echo Usage: $0 source_file [target_directory]
	exit 1
elif [[ 1 -eq $# ]]
then
	source="$1"
	target="./"
else
	source="$1"
	target="$2"
fi

# Check if the source is a readable, non-empty file
if [[ ! ( -f "$source" && -s "$source" && -r "$source") ]]
then
	echo Source "($source)" is not a useable file.
	exit 1
fi

sourceBase=$(basename "${source%.*}")

#ffmpeg -hide_banner -nostats -i "$source" -c:v libx264 -c:a aac -pix_fmt yuv420p -strict -2 -coder ac -qmin 3 -qmax 51 -y -profile:v high "$target/${sourceBase}_h264.mp4" > "$target/$sourceBase.log" 2>&1

ffmpeg -i "$source" -c:v libx264 -c:a aac -pix_fmt yuv420p -strict -2 -coder ac -qmin 10 -qmax 51 -y -profile:v high "${sourceBase}_h264.mp4"
