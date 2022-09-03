#! /bin/bash

## make sure yay is okey
set -e

# picom
paru -S picom-jonaburg-git

yay -S just-git starship-git ripgrep-git tealdeer-git navi-git sad-git choose-git

yay -S fcitx5-pinyin-moegirl fcitx5-material-color

yay -S sddm-theme-aerial-git

mv aerial-sddm-theme /usr/share/sddm/themes/

yay -Yc
