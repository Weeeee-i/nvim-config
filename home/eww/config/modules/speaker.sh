#!/usr/bin/env bash

case $1 in
      "*") command="" ;;
      "up") command="2%+" ;;
      "down") command="2%-" ;;
      "toogle") command="toggle" ;;
esac

[ -n "$command" ] && amixer set Master $command 
mute=$(amixer get Master | grep -o "\[on\]")
if [[ -n "$mute" ]]; then
      volume="$(amixer -D pipewire sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%')"
      if [ "$volume" -gt 66 ]; then
            icon="VOL"
      elif [ "$volume" -gt 33 ]; then
            icon="VOL"
      elif [ "$volume" -gt 0 ]; then 
            icon="VOL"
      else 
            icon="MUTE"
      fi
      volume="$volume%" 
else 
      volume=""
      icon="MUTE"
fi

echo "{\"content\": \"$volume\", \"icon\": \"$icon\"}"


