#!/bin/bash

echo "applying blur"


Walldir="$HOME/.config/walls"

# Use fzf with kitty/ueberzug image preview
chosen=$((ls "$Walldir"; echo "Add a Theme") | fzf --preview "kitty +kitten icat --clear --transfer-mode=memory --stdin=no --place=40x40@0x0 $Walldir/{}")

echo "$chosen"


 swww img "$Walldir/$chosen" --transition-type center --transition-fps 120 --transition-step 60
    wal -i "$Walldir/$chosen" -n --cols16
