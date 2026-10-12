#!/bin/sh
set -eu

# Set your terminal:
terminal="${TERMINAL:-st}"

# Pick repo
configs="$(ls -1d "$HOME"/repos/*/ 2>/dev/null | xargs -n1 basename)"
[ -n "$configs" ] || exit 0
chosen="$(printf '%s\n' "$configs" | wofi --dmenu -i -p 'Projects:')"
[ -n "$chosen" ] || exit 0

dir="$HOME/repos/$chosen"

# Nuke any existing terminal instance if you only use one terminal
pkill -x "$terminal" 2>/dev/null || true
sleep 0.1

# Launch a clean terminal: attach if exists, else create
exec "$terminal" -e tmux new-session -As "$chosen" -c "$dir"
