#!/bin/bash

BW='\033[1;37m' #Bold White
BP='\033[1;35m' #Bold Purple
NC='\033[0m'    #No Color

echo -e "${BP}Zadejte cestu ke složce s obrázky..${BW}"
read dir
cd $dir
mkdir sampled

echo -e "${BP}Zadejte velikost v procentech..${BW}"
read vel
echo -e "${BP}Sampluji.. bude to chvíli trvat.. ;)${NC}"
for i in *.JPG
do echo "${i}" && convert $i -sample ${vel}% sampled/$i
done
