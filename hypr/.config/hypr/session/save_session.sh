#!/bin/bash

SESSION_DIR="$HOME/.config/hypr/session"
mkdir -p "$SESSION_DIR"

SESSION_FILE="$SESSION_DIR/session_apps.txt"
> "$SESSION_FILE"

# Get all Hyprland clients as JSON
clients=$(hyprctl clients -j)

# Use jq to parse window class, workspace, and PID
echo "$clients" | jq -r '
  .[] | select(.class != "Hyprland") |
  "\(.workspace.id)|\(.pid)|\(.class)"
' | while IFS='|' read -r workspace pid class; do
    # Validate PID
    if [[ -n "$pid" && "$pid" =~ ^[0-9]+$ ]]; then
        # Get the command used to launch the process
        cmd=$(ps -p "$pid" -o cmd=)
        if [[ -n "$cmd" ]]; then
            echo "$workspace|$cmd" >> "$SESSION_FILE"
        fi
    fi
done

echo "✅ Session saved to $SESSION_FILE"

