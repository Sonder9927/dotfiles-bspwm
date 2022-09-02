#! /bin/bash
set -e
pacman -Syyu

## Install fish
pacman -S --noconfirm fish
## Install xorg
pacman -S --noconfirm xorg-server xorg-xinit xorg-xsetroot
## Install fonts
pacman -S ttf-dejavu wqy-zenhei noto-fonts-cjk adobe-source-code-pro-fonts nerd-fonts noto-fonts-emoji noto-fonts-extra
## Install bspwm.
pacman -S --noconfirm bspwm sxhkd polybar alacritty rofi feh picom
## Install code
pacman -S --noconfirm go cargo nodejs yarn lua
## Install software
pacman -S --noconfirm chromium firefox exa eva bat git git-delta ripgrep fd wget unzip rsync

## Install vm tools
### for orcale
pacman -S --noconfirm virtualbox virtualbox-host-dkms virtualbox-guest-iso virtualbox-guest-utils
### for vmware [[#extra]]
pacman -S --noconfirm open-vm-tools gtkmm3
## wei ma
pacman -S --noconfirm intel-ucode amd-ucode mesa lib32-mesa vulkan-intel lib32-vulkan-intel