#!/bin/bash

WALL="$1"

hyprctl hyprpaper preload "$WALL"
hyprctl hyprpaper wallpaper ",$WALL"

wal -i "$WALL"	
