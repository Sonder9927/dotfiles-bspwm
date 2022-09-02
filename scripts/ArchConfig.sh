#! /bin/bash

set -e

# config by my dotfiles-bspwm on Github
## pre-config
### z.lua
if [ -d $HOME/Applications ];then
  mkdir $HOME/Applications
fi
git clone https://skywind3000/z.lua.git $HOME/Applications/
### fonts
cp $HOME/Downloads/fonts/*.ttf /usr/share/fonts/TTF/
fc-cache -vf

## config
### use bash shell
echo 'alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"' >> $HOME/.bashrc
echo ".dotfiles" >> $HOME/.gitignore
source $HOME/.bashrc
git clone --bare https://github.com/Sonder9927/dotfiles-bspwm.git $HOME/.dotfiles
### checkout
dotfiles checkout
