#!/bin/bash

find -L "$HOME/.config/walls/" -type f \
  \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) \
  | sort -n \
  | while IFS= read -r path; do
      name=$(basename "$path")
      name="${name%.*}"
      name="${name//_/ }"
      name="${name//-/ }"
      name="${name//   / }"
      
      # Output JSON format for Walker
      cat <<EOF
{"label":"$name","image":"$path","exec":"harmony-set-wallpaper \"$path\" &"}
EOF
    done
