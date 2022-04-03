#!/bin/bash

# You can call this script like this:
# $./brightness-manager.sh up
# $./brightness-manager.sh down

function get_brightness {
    light | grep -oE '^[0-9]+'
}

function send_notification {
    id=2594
    timeout=2000
    iconpath=/home/jlndk/.config/i3/icons/font-awesome/white/png/64
    brightness=`get_brightness`

    # Make the bar with the special character ─ (it's not dash -)
    bar=$(seq -s "─" $(($brightness / 4)) | sed 's/[0-9]//g')
    # Send the notification
    notify-desktop -r $id -i $iconpath/sun-o.png -t $timeout "Brightness" "$brightness%<br>$bar" > /dev/null
}

case $1 in
    up)
	   light -A 2.5
	   send_notification
	;;
    down)
	   light -U 2.5
	   send_notification
	;;
esac
