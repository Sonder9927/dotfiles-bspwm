#! /bin/bash

## make sure yay is okey
set -e

yay -Syyu && yay -Sys

# picom
paru -S --noconfirm picom-jonaburg-git

yay -S --noconfirm fnm just-git starship-git ripgrep-git tealdeer-git sad-git  # choose-git navi-git

yay -S --noconfirm fcitx5-pinyin-moegirl fcitx5-material-color

yay -S --noconfirm sddm-theme-aerial-git

yay -Yc
