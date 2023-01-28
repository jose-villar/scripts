#!/bin/env sh

#******************************************************************************#
#                                 switch_to.sh                                 #
#      Switch focus to an open window or launch the app if it is not open      #
#      Ex. usage: switch_to.sh firefox                                         #
#******************************************************************************#

TryToFocusWindow() {
  window_name_sub_str=$1
  wmctrl -a "$window_name_sub_str" > /dev/null 2>&1
  return $?
}

TryToRunApp() {
  app_name=$1
  $app_name > /dev/null 2>&1
}

TryToFocusWindow "$1" || TryToRunApp "$1"
