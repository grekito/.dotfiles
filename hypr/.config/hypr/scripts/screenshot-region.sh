#!/bin/bash

# Select a region with slurp
region=$(slurp)

# Exit if no region was selected
[ -z "$region" ] && exit 1

# Create screenshot directory
mkdir -p ~/Pictures/Screenshots

file=~/Pictures/Screenshots/screenshot-$(date +'%Y-%m-%d_%H-%M-%S').png

# Take region screenshot
grim -g "$region" "$file"

# Copy to clipboard
wl-copy < "$file"
# # Take screenshot of selected region
# grim -g "$region" ~/Pictures/Screenshots/screenshot-$(date +'%Y-%m-%d_%H-%M-%S').png

notify-send "Screenshot saved to ~/Pictures/Screenshots"
