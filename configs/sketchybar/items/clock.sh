# #!/bin/bash
#
# calendar=(
#   icon=cal
#   icon.font="$FONT:Black:12.0"
#   icon.padding_right=0
#   label.align=right
#   width=130
#   padding_left=15
#   script="$PLUGIN_DIR/calendar.sh"
#   update_freq=60
#   updates=on
# )
#
# sketchybar --add item calendar right       \
#            --set calendar "${calendar[@]}" \
#            --subscribe calendar system_woke
#!/bin/bash

clock=(
  icon=󰃰
  icon.color=$RED
  update_freq=10
  background.color=$BACKGROUND_1
  icon.padding_left=10
  icon.padding_right=10
  label.padding_right=10
  label.padding_left=0
)

sketchybar --add item clock right \
  --set clock ${clock[@]}\
    script="$PLUGIN_DIR/clock.sh"
