#!/bin/bash

echo "🔄 Sincronizando Obsidian..."

if rclone bisync ~/Documentos/Obsidian gdrive:Obsidian; then
notify-send "Obsidian Sync" "Sincronización completada ✅"
else
notify-send "Obsidian Sync" "Sincronización fallida ❌"
fi


