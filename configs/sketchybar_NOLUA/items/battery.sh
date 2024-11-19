#!/bin/bash


POPUP_OFF="sketchybar --set battery popup.drawing=off"
# POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

battery=(
  update_freq=5
  script="$PLUGIN_DIR/battery.sh"
  icon.color=$GREEN
  background.color=$BACKGROUND_1
  icon.padding_left=10
  icon.padding_right=10
  label.padding_right=10
  label.padding_left=0
  icon.y_offset=1
)

sketchybar --add item battery right \
           --set battery "${battery[@]}"
