#!/bin/env sh

#******************************************************************************#
#                           toggle_alacritty_zoom.sh                           #
#                  Toggle between medium and large font sizes                  #
#******************************************************************************#

ALACRITTY_RC=~/.config/alacritty/alacritty.yml

# Font sizes
MD=10.5
LG=16

IsCurrentFontSizeLg() {
  grep "size: $LG" $ALACRITTY_RC > /dev/null 2>&1
  return $? # Exit status of grep
}

ChangeFontSize() {
  sed -E -i "s/size: (.*)/size: $1/g" $ALACRITTY_RC
}

IsCurrentFontSizeLg && tgt=$MD || tgt=$LG
ChangeFontSize "$tgt"
