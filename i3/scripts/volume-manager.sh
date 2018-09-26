#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    if is_mute ; then
        notify-desktop -r 2593 -i /home/jlndk/.config/i3/icons/font-awesome/white/png/64/volume-off.png -t 4 "Muted" "Speakers are muted"
    else
        volume=`get_volume`
        # Make the bar with the special character ─ (it's not dash -)
        bar=$(seq -s "─" $(($volume / 5)) | sed 's/[0-9]//g')
        # Send the notification
        notify-desktop -r 2593 -i /home/jlndk/.config/i3/icons/font-awesome/white/png/64/volume-up.png -t 4 "Volume" "$volume%\n$bar"
    fi
}

case $1 in
    up)
	   amixer -D pulse sset Master 5%+
	   send_notification
	;;
    down)
	   amixer -D pulse sset Master 5%-
	   send_notification
	;;
    mute)
    	# Toggle mute
    	amixer -D pulse sset Master toggle
    	if is_mute ; then
    	    notify-desktop -r 2593 -t 4 -i /home/jlndk/.config/i3/icons/font-awesome/white/png/64/volume-off.png "Muted" "Speakers are now muted"
    	else
    	    notify-desktop -r 2593 -t 4 -i /home/jlndk/.config/i3/icons/font-awesome/white/png/64/volume-up.png "Unmuted" "Speakers are now unmuted"
    	fi
	;;
esac
