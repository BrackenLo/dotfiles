#!/bin/sh

LAYOUT=`hyprctl getoption general:layout | tr "\n" " " | cut -d " " -f 2`

case $LAYOUT in
    "dwindle") hyprctl keyword general:layout master;;
    "master") hyprctl keyword general:layout hy3;;
    "hy3") hyprctl keyword general:layout master;;
    *) hyprctl keyword general:layout dwindle;;
esac
