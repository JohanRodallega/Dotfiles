#!/bin/bash

dir="$HOME/Imágenes/Screenshots/"
mkdir -p "$dir"

file="$dir/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png"

grim -g "$(slurp)" "$file"

notify-send "📸 Screenshot guardado" "$file"
