#!/bin/bash

# Capture a picture from the camera on /dev/video0
function capture() {
	# Using 15 frames per image to prevent weird artifacts
	fswebcam -r 640x360 -F 15 --no-banner --quiet --png 9 $1
}
