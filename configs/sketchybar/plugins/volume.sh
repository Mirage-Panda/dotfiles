#!/bin/bash
source icons.sh
source fonts.sh

if (( INFO == 0 )); then
    ICON=$VOLUME_0
    ICON_PADDING_RIGHT=8
elif (( INFO >= 1 && INFO <= 33 )); then
    ICON=$VOLUME_33
    ICON_PADDING_RIGHT=12
elif (( INFO >= 34 && INFO <= 66 )); then
    ICON=$VOLUME_66
    ICON_PADDING_RIGHT=12
elif (( INFO >= 67 && INFO <= 100 )); then
    ICON=$VOLUME_100
    ICON_PADDING_RIGHT=8
fi

sketchybar --set $NAME\
    icon=$ICON\
    icon.padding_right=$ICON_PADDING_RIGHT\
    icon.font="$NERD_FONT:Regular:16"\
    label="$INFO%"
