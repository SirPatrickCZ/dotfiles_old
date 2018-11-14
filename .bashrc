#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1='\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] '  #Cyam
#PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '  #Green

alias ls='ls --color=auto'
alias ll='ls -l --group-directories-first'
alias la='ls -Al --group-directories-first'
alias grep='grep --color'
alias nf='neofetch'
alias cp="cp -i"
alias df='df -h'
alias du='du -hs --apparent-size'
alias numof='find ./ -type f | wc -l'
alias v='vim'
alias sv='sudo vim'
alias vb='vim ~/.bashrc'
alias yas='yay -S'
alias yar='yay -Rs'
alias yac='yay -Yc && yay -Sc'
alias yayy='yay -Syy'
alias nas='sudo mount -t cifs -o user=public,password=,iocharset=utf8,noperm //192.168.0.119/Public /mnt/NAS'
alias tm='while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done & '
alias rsyncc='sudo rsync -aAXv --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude="Dropbox" --exclude=".thumbnails" / /media/data/archie/rsync' 
alias syncCanon18='rsync -rutv /run/media/archie/0B7B9DAA0765338B/Pictures/100CANON/2018/ /mnt/NAS//FOTKY/100CANON/2018'
alias syncCanonM='rsync -rutv /run/media/archie/0B7B9DAA0765338B/Pictures/100CANON/Movies/ /mnt/NAS//FOTKY/100CANON/Movies/'
alias aha='ssh 192.168.0.118'
alias ahax='sudo Xorg -terminate -query 192.168.0.118 :1'
alias g='git commit -a && git push'
# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
