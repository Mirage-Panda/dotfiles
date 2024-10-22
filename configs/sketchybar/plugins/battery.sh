#!/bin/sh

source fonts.sh
source icons.sh
source colors.sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
    exit 0
fi

case "${PERCENTAGE}" in
    9[0-9]|100) ICON=$BATTERY_25 COLOR="$GREEN"
        ;;
    [6-8][0-9]) ICON=$BATTERY_50 COLOR="$GREEN"
        ;;
    [3-5][0-9]) ICON=$BATTERY_75 COLOR="$YELLOW"
        ;;
    [1-2][0-9]) ICON=$BATTERY_100 COLOR="$RED"
        ;;
    0) ICON=$BATTERY_0 COLOR="$RED"
esac


if [[ "$CHARGING" != "" ]]; then
    ICON=$BATTERY_CHARGING COLOR="$GREEN"
fi

# Apply icon and label along with the color
sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR"
sketchybar --set "$NAME" label="${PERCENTAGE}%"
