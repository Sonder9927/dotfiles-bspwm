#! /bin/bash

## make sure yay is okey
set -e

sudo cat archlinuxcn-pacman.conf >> /etc/pacman.conf
sudo pacman -Syy --noconfig && sudo pacman -S --noconfirm archlinuxcn-keyring
sudo pacman -S --noconfirm yay paru

yay -Syyu && yay -Sys

# picom
paru -S picom-jonaburg-git

yay -S just-git starship-git ripgrep-git tealdeer-git navi-git sad-git choose-git

yay -S fcitx5-pinyin-moegirl fcitx5-material-color

yay -S sddm-theme-aerial-git

sudo mv aerial-sddm-theme /usr/share/sddm/themes/

yay -Yc
