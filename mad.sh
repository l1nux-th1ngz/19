#!/bin/bash

# List of directories to copy
directories=("dunst" "qt5ct" "eww" "mpd" "swww" "nmpcpp" "qt6ct" "swaync" "vim" "nvim" "kitty" "pipewire" "mpv" "rofi" "alacritty" "swaylock" "waybar" "wlogout" "wofi")

# Destination directory
dest_dir="~/.config"

# Start an infinite loop
while true; do
    # Loop over the directories
    for dir in "${directories[@]}"; do
        # Use the find command to search for the directory in the entire filesystem
        find / -type d -name "$dir" 2>/dev/null | while read -r src_path; do
            # Check if the source directory exists
            if [ -d "$src_path" ]; then
                # Copy the directory to the destination
                cp -r "$src_path" "$dest_dir"
                echo "Copied $src_path to $dest_dir"
            fi
        done
    done
    
    # Sleep for a specified amount of time (e.g., 60 seconds)
    sleep 60
done

