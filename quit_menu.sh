#!/bin/sh

choice=$(printf "Power off\nReboot\nLog out\nCancel" | dmenu -i -p "Quit menu")

case "$choice" in
"Log out")
	i3-msg exit
	;;
"Reboot")
	reboot
	;;
"Power off")
	shutdown -h now
	;;
esac
