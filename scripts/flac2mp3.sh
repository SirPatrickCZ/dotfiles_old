#!/bin/bash
echo "Zadejte cestu k flac souborům"
read cesta
cd $cesta
for a in *.flac; do
  f="${a[@]/%flac/mp3}"
  ffmpeg -i "$a" -qscale:a 0 "$f"
done
mkdir mp3
cp *.mp3 mp3/
echo "Hotovo."
