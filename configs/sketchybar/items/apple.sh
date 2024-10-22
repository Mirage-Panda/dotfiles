#!/bin/bash

POPUP_OFF="sketchybar --set apple.logo popup.drawing=off"
POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

apple_logo=(
  icon="󰣙"
  icon.font="Hack Nerd Font:Normal:22"
  icon.color=$BLACK
  padding_right=10
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
  background.color=$BLUE
    background.border_color=$BACKGROUND_2
    background.border_width=0
    background.drawing=on
    background.corner_radius=8
    icon.padding_left=7  # Increased padding to make the box bigger
    icon.padding_right=7 # Increased padding to make the box bigger
)

apple_about=(
  icon=$ABOUT
  label="About this Mac"
  click_script="open -a 'About This Mac'; $POPUP_OFF"
)

apple_prefs=(
  icon=$PREFERENCES
  label="Preferences"
  click_script="open -a 'System Preferences'; $POPUP_OFF"
)

apple_activity=(
  icon=$ACTIVITY
  label="Activity"
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
)

apple_lock=(
  icon=$LOCK
  label="Lock Screen"
  click_script="pmset displaysleepnow; $POPUP_OFF"
)

# apple_shutdown=(
#   icon=$SHUTDOWN  # Ensure you define $SHUTDOWN_ICON with the appropriate icon path
#   icon.color=$RED
#   label.color=$RED
#   label="Shut Down"
#   click_script="$POPUP_OFF"
# )

sketchybar --add item apple.logo left                    \
           --set apple.logo "${apple_logo[@]}"           \
                                                         \
          --add item apple.about popup.apple.logo        \
           --set apple.about "${apple_about[@]}"         \
                                                         \
           --add item apple.prefs popup.apple.logo       \
           --set apple.prefs "${apple_prefs[@]}"         \
                                                         \
           --add item apple.activity popup.apple.logo    \
           --set apple.activity "${apple_activity[@]}"   \
                                                         \
           --add item apple.lock popup.apple.logo        \
           --set apple.lock "${apple_lock[@]}"           
           #                                               \
           # --add item apple.shutdown popup.apple.logo    \
           # --set apple.shutdown "${apple_shutdown[@]}"
