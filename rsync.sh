#!/bin/bash

#colors
BWhite='\033[1;37m'
BP='\033[1;35m' #Bold Purple
NC='\033[0m'    #No Color

hdd=/media/data/archie
echo -e "${BWhite='\033[1;37m'}Zadejte datum zálohy:"
read datum

echo -e "${BP}Spouštím RSYNC..${NC}"
sudo rsync -aAXv --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude="Dropbox" --exclude=".thumbnails" --exclude="/home/archie/NAS/*" / /media/data/archie/rsync
echo -e "${BP}Vytvářím SQUASHFS.. Toto může chvíli trvat..${NC}"
sudo mksquashfs $hdd/rsync/ $hdd/Arch$datum.sfs -comp xz
echo -e "${BP}Připojuji NAS do /mnt/NAS..${NC}"
sudo mount -t cifs -o user=public,iocharset=utf8,noperm //192.168.0.119/Public /mnt/NAS
echo -e "${BP}Přesouvám zkomprimovaný sfs na NAS.. Toto může o5 chvíli trvat..${NC}"
cp -v $hdd/Arch$datum.sfs /mnt/NAS/LINUX/
echo -e "${BP}Odpojuji NAS${NC}"
sudo umount /mnt/NAS
vel=du -h $hdd/Arch$datum.sfs
echo -e "${BP}Záloha dokončena. Velikost souboru je ${BWhite}$vel${NC}"
