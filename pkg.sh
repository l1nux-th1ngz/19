#!/bin/bash

# List of packages to be installed
package_list=("aylurs-gtk-shell" "alacrity" "alsa" "anyrun" "bat" "bin" "btop" "cava" "cpupower_gui" "dunst" "eww-wayland" "fcitx5" "feh" "fish" "geany" "gtk2" "gtk3" "gtk4" "gtklock" "htop" "hypr" "icons" "imv" "kanshi" "kitty" "kvantaum" "mako" "micro" "modem-manager-gui" "mpv" "nano" "ncspot" "neofetch" "nvim" "picom" "pistol" "pulse" "qt" "qt5ct" "qt6ct" "ranger" "rofi-lbonn-wayland-git" "rofi-emoji-abi8" "sunshine" "swaylock" "swaync" "swww" "thunar" "tint2" "vim" "vlc" "wal" "waybar-hyprland-git" "wlogout" "wofi" "wofifull" "xfce4" "zathura")

# Loop over the array and install each package
for package in "${package_list[@]}"; do
  yay -S --noconfirm "$package"
done

echo "Packages installed successfully."
