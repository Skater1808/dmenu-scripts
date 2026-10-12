# dmenu-scripts (wofi edition)

This repository contains small launcher scripts for:

- picking a project directory and opening a tmux session
- choosing an existing tmux session
- opening a bookmark in the matching browser

The original project uses rofi and dmenu variants. This fork switches the launcher calls to wofi, which works well with Wayland and supports dmenu-style piping.

## Files

- `repos-wofi.sh` – choose a repo directory and open it in a tmux session
- `tmux-wofi.sh` – list existing tmux sessions and attach to one
- `bookmarks-wofi.sh` – select a bookmark and open it in the configured browser

## Requirements

- `wofi`
- `tmux`
- a terminal such as `st`, `alacritty`, or `kitty`
- `xdg-open` (optional fallback)

## Usage

```sh
chmod +x *.sh
./repos-wofi.sh
./tmux-wofi.sh
./bookmarks-wofi.sh
```

## Notes

- `wofi` uses dmenu-style flags, so the scripts call `wofi --dmenu -i ...` instead of rofi-specific options.
- You can override the terminal with `TERMINAL=alacritty`.
- You can override bookmark files with `PERS_FILE` and `WORK_FILE`.
