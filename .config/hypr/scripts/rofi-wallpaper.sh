#!/bin/bash

WALLDIR="$HOME/Imágenes/wallpapers/"

chosen=$(find "$WALLDIR" -type f | while read -r file; do
    echo -en "$(basename "$file")\x00icon\x1f$file\n"
done | rofi -dmenu -show-icons -p "Wallpapers")

[ -z "$chosen" ] && exit

wallpaper="$WALLDIR/$chosen"

# Cambiar wallpaper
awww img "$wallpaper" \
  -t wave \
  --transition-duration 1.8

# Pywal
wal -i "$wallpaper"

# Reiniciar waybar
pkill waybar
waybar &
