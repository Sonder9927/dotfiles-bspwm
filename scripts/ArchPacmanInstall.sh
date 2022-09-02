#! /bin/bash

set -e

# Install fish and nvim
pacman -S --noconfirm fish neovim vim
# Install xorg
pacman -S --noconfirm xorg-server xorg xorg-xinit xorg-xsetroot
# Install fonts
pacman -S --noconfirm nerd-fonts ttf-dejavu wqy-zenhei noto-fonts-cjk noto-fonts-emoji noto-fonts-extra adobe-source-code-pro-fonts
# Install arch-bspwm
pacman -S --noconfirm bspwm sxhkd polybar alacritty rofi feh picom
# Install language
pacman -S --noconfirm go cargo nodejs yarn lua
# Install software
pacman -S --noconfirm chromium firefox exa eva bat git-delta ripgrep fd wget unzip rsync
# Install vm tools
## for orcale
pacman -S --noconfirm virtualbox virtualbox-host-dkms virtualbox-guest-iso virtualbox-guest-utils
## for vmware
pacman -S --noconfirm open-vm-tools gtkmm3
# xian ka qu dong wei ma
pacman -S --noconfirm intet-ucode amd-ucode mesa lib32-mesa vulkan-intel lib32-vulkan-intel xf86-video-intel
