#!/bin/bash

# Pywal to Base16 Discord Theme Converter
# Converts pywal colors to Base16 colorsbase.css format

# Source pywal colors
source ~/.cache/wal/colors.sh

# Output file
OUTPUT="$HOME/.config/Vencord/themes/colorsbase.css"

# Create colorsbase.css with color definitions expected by base16-discord
cat > "$OUTPUT" << EOF
/* Auto-generated from pywal colors */
:root {
    --background: ${color0};
    --color1: ${color1};
    --color2: ${color2};
    --color3: ${color3};
    --color4: ${color4};
    --color5: ${color5};
    --color6: ${color6};
    --color7: ${color7};
    --color8: ${color8};
    --color9: ${color9};
    --color10: ${color10};
    --color11: ${color11};
    --color12: ${color12};
    --color13: ${color13};
    --color14: ${color14};
    --color15: ${color15};
}
EOF

echo "✓ Generated colorsbase.css at $OUTPUT"
echo "Colors:"
echo "  background: ${color0}"
echo "  color1-15: ${color1} ... ${color15}"
