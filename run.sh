#!/bin/bash

source src/camera.sh
source src/transcode.sh
source src/sstv.sh

# Load environmet variables from .env
if [ -f .env ]; then
	export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
fi

# Stop if script is deactivated
if ! $ACTIVE; then
	exit 0
fi 

echo "Capturing image.."
capture $IMG_INPUT

echo "Transcoding image.."
transcode $SQUOOSH_CLI $IMG_INPUT $IMG_OUTPUT

echo "Generating SSTV audio.."
sstv_encode $IMG_INPUT $IMG_OUTPUT

echo "Done"
