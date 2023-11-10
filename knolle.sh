#!/bin/bash

# Read the contents of the colors file into 3 variables
IFS=',' read -r color1 color2 color3 < ~/.config/hypr/kolors.txt

# Create a temporary file to store the new contents of the Carla file
temp_file=$(mktemp)

# Write the new contents to the temporary file
echo "\$color1 = $color1" > $temp_file
echo "\$color2 = $color2" >> $temp_file
echo "\$color3 = $color3" >> $temp_file

# Append the rest of the Carla file to the temporary file
cat ~/.config/hypr/carla.txt | tail -n +4 >> $temp_file

# Move the temporary file to the Carla file
mv $temp_file ~/.config/hypr/carla.txt
