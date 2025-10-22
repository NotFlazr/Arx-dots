#!/bin/bash
# Save this as ~/.config/matugen/scripts/foot-hex-to-rgb.sh
# Make it executable: chmod +x ~/.config/matugen/scripts/foot-hex-to-rgb.sh

# This script converts hex colors in foot's colors.ini to RGB format

FILE="$HOME/.config/foot/colors.ini"

hex_to_rgb() {
    local hex=$1
    # Remove the # if present
    hex=${hex#\#}
    # Convert hex to decimal
    local r=$((16#${hex:0:2}))
    local g=$((16#${hex:2:2}))
    local b=$((16#${hex:4:2}))
    echo "$r,$g,$b"
}

# Process the file and convert all hex colors to RGB
sed -i -E 's/#([0-9a-fA-F]{6})/\1/g' "$FILE"

# Now convert each hex value
while IFS= read -r line; do
    if [[ $line =~ ^[a-z_]+=[0-9a-fA-F]{6}$ ]]; then
        key="${line%%=*}"
        hex="${line##*=}"
        rgb=$(hex_to_rgb "$hex")
        sed -i "s/^$key=.*/\0/" "$FILE"
    fi
done < "$FILE"

# Alternative approach using awk
awk -F= '
function hex_to_rgb(hex) {
    hex = substr(hex, 1, 6)
    r = strtonum("0x" substr(hex, 1, 2))
    g = strtonum("0x" substr(hex, 3, 2))
    b = strtonum("0x" substr(hex, 5, 2))
    return r "," g "," b
}
/^[a-z_]+=/ {
    if ($2 ~ /^[0-9a-fA-F]{6}$/) {
        print $1 "=" hex_to_rgb($2)
    } else {
        print $0
    }
    next
}
{print}
' "$FILE" > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"
