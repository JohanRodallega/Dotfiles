#!/bin/bash

weather=$(curl -s "wttr.in/Bucaramanga,Colombia?format=1")

echo "{\"text\":\"$weather\",\"tooltip\":\"Clima actual\"}"
