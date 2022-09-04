#! /bin/bash

## make sure yay is okey
set -e

yay -Syyu && yay -Sys

# picom
paru -S picom-jonaburg-git

yay -S just-git starship-git ripgrep-git tealdeer-git sad-git  # choose-git navi-git

yay -S fcitx5-pinyin-moegirl fcitx5-material-color

yay -S sddm-theme-aerial-git

yay -Yc
