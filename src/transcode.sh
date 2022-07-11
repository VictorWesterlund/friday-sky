#!/bin/bash

# Transcode image to different formats
function transcode {
	formats="webp mozjpeg"
	
	for format in $formats; do
		squoosh-cli --output-dir "$2" --${format} auto "$1" &> /dev/null
	done
}
