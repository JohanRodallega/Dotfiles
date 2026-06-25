#!/bin/bash

WALLDIR="$HOME/Imágenes/wallpapers/"

chosen=$(find "$WALLDIR" -type f | while read -r file; do
    echo -en "$(basename "$file")\x00icon\x1f$file\n"
done | rofi -dmenu -show-icons -p "Wallpapers")

[ -z "$chosen" ] && exit

wallpaper="$WALLDIR/$chosen"

# Cambiar wallpaper
effects=("grow" "outer" "wave" "wipe")

effect=${effects[$RANDOM % ${#effects[@]}]}

awww img "$wallpaper" \
  -t "$effect" \
  --transition-duration 2 \
  --transition-fps 180 \
  --transition-pos 0.1,0.1 \
  --transition-bezier .54,0,.34,.99

# Pywal
wal -i "$wallpaper"

# Reiniciar waybar
killall -SIGUSR2 waybar
