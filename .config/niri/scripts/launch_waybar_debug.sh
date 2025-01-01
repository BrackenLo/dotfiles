#!/bin/bash

CONFIG_PATH="$HOME/.config/waybar"

trap "killall waybar" EXIT

while true; do
    waybar -c ~/.config/waybar/config-niri.jsonc &
    inotifywait -r -e create,modify $CONFIG_PATH
    killall waybar
done
