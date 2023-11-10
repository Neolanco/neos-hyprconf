#!/bin/bash

# Read the contents of the colors file into 3 variables
IFS=',' read -r color1 color2 color3 < ~/.config/hypr/background-extraction/extracted-colors.txt

# Create a temporary file to store the new contents of the Carla file
temp_file=$(mktemp)

# Write the new contents to the temporary file
echo "@define-color color-accent-0-0 #$color1;" > $temp_file
echo "@define-color color-accent-0-1 #$color2;" >> $temp_file
echo "@define-color color-accent-0-2 #$color3;" >> $temp_file

# Append the rest of the hyprland file to the temporary file
cat ~/.config/hypr/waybar/style.css | tail -n +4 >> $temp_file

# Move the temporary file to the config file
mv $temp_file ~/.config/hypr/waybar/style.css