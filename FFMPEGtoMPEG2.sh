#!/bin/bash
##Simple script using ffmpeg to convert video to antiquated mpeg2 with mono audio for outdated hardware/equipment.
for var in "$@"
do
mpgOut="${var%.*}.mpg" 
ffmpeg -i "$var" -vcodec mpeg2video -b:v 4750k -r 29.7 -movflags faststart -pix_fmt yuv420p -vtag xd5c -ac 1 -c:a ac3 -b:a 192k "$mpgOut"
done
