# #!/bin/bash
#
# SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25")
#
# # Destroy space on right click, focus space on left click.
# # New space by left clicking separator (>)
#
# sid=0
# spaces=()
# for i in "${!SPACE_ICONS[@]}"
# do
#   sid=$(($i+1))
#
#   space=(
#     associated_space=$sid
#     icon=${SPACE_ICONS[i]}
#     icon.padding_left=10
#     icon.padding_right=15
#     padding_left=$PADDINGS
#     padding_right=$PADDINGS
#     label.padding_right=20
#     icon.highlight_color=$RED
#     icon.font="Return Space:Regular:18.0"
#     label.background.height=26
#     label.background.drawing=on
#     label.background.color=$BACKGROUND_2
#     label.background.corner_radius=8
#     label.drawing=off
#     script="$PLUGIN_DIR/space.sh"
#   )
#
#   sketchybar --add space space.$sid left    \
#              --set space.$sid "${space[@]}" \
#              --subscribe space.$sid mouse.clicked
# done
#
# spaces=(
#   background.color=$BACKGROUND_1
#   background.border_color=$BACKGROUND_2
#   background.border_width=$BORDER_WIDTH_1
#   background.drawing=on
# )
#
# separator=(
#   icon=􀆊
#   icon.font="$FONT:Heavy:16.0"
#   # padding_left=15
#   # padding_right=15
#   icon.width=30
#   label.drawing=off
#   associated_display=active
#   click_script='yabai -m space --create && sketchybar --trigger space_change'
#   icon.color=$WHITE
#   background.color=$TRANSPARENT
# )
#
# sketchybar --add bracket spaces '/space\..*/' \
#            --set spaces "${spaces[@]}"        \
#                                               \
#            --add item separator left          \
#            --set separator "${separator[@]}"
#
#
#!/bin/bash
sketchybar --add item current_space left \
    --set current_space \
    background.color=$MAGENTA \
    icon.color=$BLACK \
    icon.font="Return Space:Regular:18.0" \
    label.drawing=off \
    script="$PLUGIN_DIR/spaces.sh" \
    --subscribe current_space space_change mouse.clicked
