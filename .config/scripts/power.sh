#!/bin/bash
buttons=("󰐥   Poweroff" "󰜉   Restart" "󰗽   Log out" )
chosen=$(printf "%s\n" "${buttons[@]}" | rofi -dmenu -p "󰐦   Power option")
if [ "$chosen" = "󰐥   Poweroff" ]; then
  echo powering off
shutdown now
elif [ "$chosen" = "󰜉   Restart" ]; then
  reboot
elif [ "$chosen" =  "󰗽   Log out" ]; then
  hyprctl dispatch exit

fi
