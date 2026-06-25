#!/bin/bash

updates=$(checkupdates 2>/dev/null | wc -l)

echo "{\"text\":\"📦 $updates\",\"tooltip\":\"$updates actualizaciones disponibles\"}"
