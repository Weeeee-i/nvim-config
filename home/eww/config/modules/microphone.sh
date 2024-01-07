#!/bin/sh

case $1 in
      "*") command="" ;;
      "up") command="2%+" ;;
      "down") command="2%-" ;;
      "toogle") command="toggle" ;;
esac

[ -n "$command" ] && amixer set Capture $command 
mute=$(amixer get Master | grep -o "\[on\]")
if [[ -n "$mute" ]]; then
      volume="$(amixer -D pipewire sget Capture | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%')%"
      icon=""
else 
      volume=""
      icon=""
fi

echo "{\"content\": \"$volume\", \"icon\": \"$icon\"}"




