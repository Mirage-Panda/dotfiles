#!/bin/bash

# Max number of characters so it fits nicely to the right of the notch
# MAY NOT WORK WITH NON-ENGLISH CHARACTERS

MAX_LENGTH=28

# Logic starts here, do not modify
SPOTIFY_JSON="$INFO"

update_track() {

    if [[ -z $SPOTIFY_JSON ]]; then
        sketchybar --set $NAME icon.color=0xffeed49f label.drawing=no
        return
    fi

    PLAYER_STATE=$(echo "$SPOTIFY_JSON" | jq -r '.["Player State"]')

    if [ $PLAYER_STATE = "Playing" ]; then
        TRACK="$(echo "$SPOTIFY_JSON" | jq -r .Name)"

        # Calculations so it fits nicely
        TRACK_LENGTH=${#TRACK}

        if [ $TRACK_LENGTH -gt $MAX_LENGTH ]; then
            # If the track name is too long, truncate it and add an ellipsis
            TRACK="${TRACK:0:$((MAX_LENGTH - 1))}…"
        fi
        sketchybar --set $NAME label="${TRACK}" label.drawing=yes icon.color=0xffa6da95

    elif [ $PLAYER_STATE = "Paused" ]; then
        sketchybar --set $NAME icon.color=0xffeed49f
    elif [ $PLAYER_STATE = "Stopped" ]; then
        sketchybar --set $NAME icon.color=0xffeed49f label.drawing=no
    else
        sketchybar --set $NAME icon.color=0xffeed49f
    fi
}

case "$SENDER" in
"mouse.clicked")
    osascript -e 'tell application "Spotify" to playpause'
    ;;
*)
    update_track
    ;;
esac
