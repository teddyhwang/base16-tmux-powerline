#!/usr/bin/env bash
# Script to set tmux mode-style based on light/dark theme

# Get current theme name from tinty
current_theme=$(tinty current 2>/dev/null)

# Check if it's a light theme (contains "light" in the name)
if [[ "$current_theme" == *"light"* ]]; then
  # Light theme: use base01 for subtle highlight
  tmux set -g mode-style 'bg=colour01,fg=colour00'
else
  # Dark theme: use base03 for better visibility
  tmux set -g mode-style 'bg=colour03,fg=colour00'
fi
