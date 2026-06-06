#!/usr/bin/env python3

import json
import subprocess

try:
    title = subprocess.check_output(
        ["playerctl", "metadata", "title"],
        stderr=subprocess.DEVNULL
    ).decode().strip()

    artist = subprocess.check_output(
        ["playerctl", "metadata", "artist"],
        stderr=subprocess.DEVNULL
    ).decode().strip()

    text = f"{artist} - {title}" if artist else title

    print(json.dumps({
        "text": f"🎵 {text}",
        "tooltip": text
    }))
except:
    print(json.dumps({
        "text": "",
        "tooltip": ""
    }))

text = f"{artist} - {title}" if artist else title

if len(text) > 45:
    text = text[:42] + "..."
