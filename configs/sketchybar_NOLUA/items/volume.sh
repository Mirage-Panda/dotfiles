#bin/bash

volume=(
  script="$PLUGIN_DIR/volume.sh"
  icon.color="$BLUE"
  icon.font="$FONT_FACE:Regular:16.0"
  label.drawing=true
  background.color=$BACKGROUND_1
  icon.padding_left=10
  icon.padding_right=10
  label.padding_right=10
  label.padding_left=0
)

sketchybar --add item volume right
sketchybar --set volume "${volume[@]}"
sketchybar --subscribe volume volume_change
