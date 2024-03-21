#!/usr/bin/env bash

## Simple Script To Pick Color Quickly.

# pick and autocopy
hyprpicker -n -a

# get the value
color=$(wl-paste)

image=/tmp/${color}.png

if [[ "$color" ]]; then
    # notify the color
    notify-send -u low -i ${image} "$color" "Copied to clipboard."
fi
