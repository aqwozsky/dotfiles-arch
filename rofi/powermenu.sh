#!/bin/bash

chosen=$(printf "  Shutdown\n  Reboot\n  Logout\n  Lock" | rofi -dmenu -i -p "Power")

case "$chosen" in
    *Shutdown*) systemctl poweroff ;;
    *Reboot*) systemctl reboot ;;
    *Logout*) hyprctl dispatch exit ;;
    *Lock*) hyprlock ;;
esac
