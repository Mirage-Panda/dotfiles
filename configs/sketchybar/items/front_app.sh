#!/bin/bash

FRONT_APP_SCRIPT='sketchybar --set $NAME label="$INFO"'


front_app=(
  script="$FRONT_APP_SCRIPT"
  icon.drawing=off
  label.padding_left=10
  label.padding_right=10
  label.color=$BLACK
  label.font="Return Space:Regular:16.0"
  y_offset=0
  background.color=$ORANGE
  associated_display=active
)

sketchybar --add item front_app left           \
           --set front_app "${front_app[@]}"   \
           --subscribe front_app front_app_switched

