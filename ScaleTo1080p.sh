#!/bin/bash
##Simple script using ffmpeg to scale higer res video in a container to 1080p.
for var in "$@"
do
mpgOut="${var%.*}-1080p.${var##*.}" 
ffmpeg -i "$var" -c:v libx264 -crf 23 -preset veryfast -c:a copy "$mpgOut"
done
