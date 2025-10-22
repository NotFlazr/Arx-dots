#!/bin/bash
options=("   Apps" "   Theme switcher" " Add theme")

chosen=$(printf "%s\n" "${options[@]}" | walker --dmenu -p "Control panel")
if [ "$chosen" = "   Apps" ];then
walker
elif [ "$chosen" = "   Theme switcher" ];then
kitty -e ~/.config/scripts/thememe.sh

fi