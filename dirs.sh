#!/bin/bash

# create
dirs=("ags" "alacrity" "alsa" "anyrun" "bat" "bin" "btop" "cava" "cpupower_gui" "dunst" "eww" "fcitx5" "feh" "fish" "geany" "gtk-2.0" "gtk-3.0" "gtk-4.0" "gtklock" "htop" "hypr" "icons" "imv" "kanshi" "kitty" "kvantaum" "mako" "micro" "modem-manager-gui" "mpv" "nano" "ncspot" "neofetch" "nvim" "picom" "pistol" "pulse" "qt" "qt5ct" "qt6ct" "ranger" "rofi" "rofi-emoji" "sunshine" "swaylock" "swaync" "swww" "thunar" "tint2" "vim" "vlc" "wal" "waybar" "wlogout" "wofi" "wofifull" "xfce4" "zathura")

# Loop over the array and create each directory
for dir in "${dirs[@]}"; do
  mkdir -p ~/.config/"$dir"
done

echo "Directories created successfully."
