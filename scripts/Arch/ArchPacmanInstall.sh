#! /bin/bash

set -e

# need sudo
pacman -Syyu

# Install fish and nvim
pacman -S --noconfirm fish neovim vim openssh
# Install xorg
pacman -S --noconfirm xorg-server xorg xorg-xinit xorg-xsetroot xorg-xprop
# Install fonts
pacman -S --noconfirm ttf-dejavu wqy-zenhei noto-fonts-cjk noto-fonts-emoji noto-fonts-extra adobe-source-code-pro-fonts
# Install arch-bspwm
pacman -S --noconfirm bspwm sxhkd polybar alacritty rofi feh neofetch
# Install language
pacman -S --noconfirm go cargo nodejs yarn lua cmake
# Install software
pacman -S --noconfirm chromium firefox fzf exa eva bat git-delta fd wget unzip rsync dunst
# Install vm tools
## for orcale
pacman -S --noconfirm virtualbox virtualbox-host-dkms virtualbox-guest-iso virtualbox-guest-utils
## for vmware
pacman -S --noconfirm open-vm-tools gtkmm3
# xian ka qu dong wei ma
pacman -S --noconfirm intel-ucode amd-ucode mesa vulkan-intel xf86-video-intel
# fctix
pacman -S --noconfirm fcitx5-im fcitx5-chinese-addons fcitx5-pinyin-zhwiki fitx5-material-color
# Install sddm
pacman -S --noconfirm sddm gst-libav phonon-qt5-gstreamer gst-plugins-good qt5-quickcontrols qt5-graphicaleffects qt5-multimedia

cat archlinuxcn-pacman.conf >> /etc/pacman.conf
pacman -Syy --noconfig && sudo pacman -S --noconfirm archlinuxcn-keyring
pacman -S --noconfirm yay paru
