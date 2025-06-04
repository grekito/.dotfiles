#!/bin/bash

SESSION_FILE="$HOME/.config/hypr/session/session_apps.txt"

if [[ ! -f "$SESSION_FILE" ]]; then
  echo "❌ No session file found."
  exit 1
fi

while IFS='|' read -r workspace cmd; do
    # Start the app
    nohup $cmd &>/dev/null &
    pid=$!

    # Delay to let the window appear
    sleep 1.5

    # Move window to saved workspace (requires Hyprland dispatch)
    hyprctl dispatch movetoworkspace "$workspace,address:$pid"
done < "$SESSION_FILE"

echo "✅ Session restored"

