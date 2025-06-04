#!/bin/bash

# Get the monitor ID of the active window (e.g., "1")
monitor_id=$(hyprctl activewindow -j | jq -r '.monitor')

# Get the output (e.g., "eDP-1", "HDMI-A-1") that corresponds to that monitor
output=$(hyprctl monitors -j | jq -r --arg id "$monitor_id" '.[] | select(.id == ($id | tonumber)) | .name')

# Fallback if not found
[ -z "$output" ] && output="eDP-1"

file=~/Pictures/Screenshots/screenshot-$(date +'%Y-%m-%d_%H-%M-%S').png

# Take screenshot
grim -o "$output" "$file"

# Copy to clipboard
wl-copy < "$file"

# # Take screenshot
# grim -o "$output" ~/Pictures/Screenshots/screenshot-$(date +'%Y-%m-%d_%H-%M-%S').png

notify-send "Screenshot saved to ~/Pictures/Screenshots"
