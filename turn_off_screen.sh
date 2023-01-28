#!/bin/env sh

#******************************************************************************#
#                              turn_off_screen.sh                              #
#******************************************************************************#

#  For some reason, if I remove the sleep, the screen gets turned on again when
#+ I use a shortcut to invoke the script
sleep 1
xset dpms force off
