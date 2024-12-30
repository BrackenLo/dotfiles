#!/bin/sh

SPEED=0.05
ANGLE=0

while true; do

  hyprctl keyword "general:col.active_border rgba(ff7800ee) rgba(8f00ffee) ${ANGLE}deg"
  ANGLE=$(($ANGLE + 5))
  # echo "${ANGLE}"
  sleep $SPEED 
done

