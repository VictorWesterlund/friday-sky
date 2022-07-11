#!/bin/bash

# Transcode image to different formats
function transcode {
	formats="webp mozjpeg"
	
	for format in $formats; do
		$1 --output-dir "$3" --${format} auto "$2" &> /dev/null
	done
}
