#!/bin/bash

# Define directories
source_dir="catppuccin-wallpapers"
destination_dir="wallpapers"

# Create destination directory if it doesn't exist
mkdir -p "$destination_dir"

# Find and copy images with resolution greater than or equal to 4K
find "$source_dir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) -exec sh -c '
  for image; do
    resolution=$(identify -format "%w %h" "$image")
    if [ ${resolution%% *} -ge 3840 ] || [ ${resolution##* } -ge 2160 ]; then
      echo "Copying $image to $destination_dir"
      cp "$image" "$destination_dir"
    fi
  done
' sh {} +

echo "Finished processing images."
