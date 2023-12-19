#!/bin/bash

# List of directories to copy
directories=("dunst" "hypr" "kitty" "pipewire" "mpv" "rofi" "alacritty" "swaylock" "waybar" "wlogout")

# Source directory
src_dir="dotconfig"

# Destination directory
dest_dir="~/.config"

# Loop over the directories
for dir in "${directories[@]}"; do
    # Construct the source path
    src_path="$src_dir/$dir"
    
    # Check if the source directory exists
    if [ -d "$src_path" ]; then
        # Copy the directory to the destination
        cp -r "$src_path" "$dest_dir"
        echo "Copied $dir to $dest_dir"
    else
        echo "Directory $dir does not exist in $src_dir"
    fi
done
