#!/bin/bash

# Get the current yabai mode
yabai_mode=$(yabai -m query --spaces --space | jq -r .type)

# Switch layout based on current mode
case "$yabai_mode" in
    bsp)
        yabai -m space --layout stack
        ;;
    stack)
        yabai -m space --layout bsp
        ;;
esac
