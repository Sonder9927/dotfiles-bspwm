#! /bin/bash

set -e

# config by my dotfiles-bspwm on Github
# use bash shell
echo 'alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"' >> $HOME/.bashrc
echo ".dotfiles" >> $HOME/.gitignore
source $HOME/.bashrc

# download repo
git clone --bare https://github.com/Sonder9927/dotfiles-bspwm.git $HOME/.dotfiles

# checkout
dotfiles checkout
