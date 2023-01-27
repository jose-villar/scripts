#!/bin/env sh

#******************************************************************************#
#                           toggle_alacritty_zoom.sh                           #
#                  Toggle between medium and large font sizes                  #
#******************************************************************************#

# Path to alacritty configuration file
alacritty_rc=~/.config/alacritty/alacritty.yml

# Definition of medium and large font sizes
md=10.5
lg=16

# Check if the current font size is large
lg_count=$(grep -c "size: $lg" $alacritty_rc)

# Font size is lg if the count is greater than 0
# If the current font size is lg, the target size is md. Otherwise, it's lg
[ $lg_count -gt 0 ] && tgt=$md || tgt=$lg

# Replace current font size with target size in alacritty's configuration file
sed -E -i "s/size: (.*)/size: $tgt/g" $alacritty_rc
