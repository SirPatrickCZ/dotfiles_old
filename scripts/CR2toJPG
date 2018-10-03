#!/bin/bash

echo "Hledám CR2 soubory ke konverzi"
ls -l | grep .CR2
echo "Konvertuji formát CR2 na formát JPG"
magick mogrify -format JPG *.CR2
echo "Hotovo. Nyní smažu CR2 soubory"
rm *.CR2
echo "Hotovo. Pro kontrolu znovu vyhledám CR2 soubory"
ls -l | grep .CR2
