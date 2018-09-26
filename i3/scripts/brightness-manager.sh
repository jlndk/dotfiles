#!/bin/bash

# You can call this script like this:
# $./brightness-manager.sh up
# $./brightness-manager.sh down

function get_brightness {
    light
}

function send_notification {
    brightness=`get_brightness`
    # Make the bar with the special character ─ (it's not dash -)
    bar=$(seq -s "─" $(($brightness)) | sed 's/^[0-9]+//g')
    # Send the notification
    notify-desktop -r 2594 -i /home/jlndk/.config/i3/icons/font-awesome/white/png/64/sun-o.png -t 4 "Brightness" "$brightness%\n$bar"
}

case $1 in
    up)
	   light -A 10
	   send_notification
	;;
    down)
	   light -U 10
	   send_notification
	;;
esac
