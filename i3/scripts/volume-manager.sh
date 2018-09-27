#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

function get_volume {
    amixer -D pulse get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer -D pulse get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    id=2593
    timeout=2000
    iconpath=/home/jlndk/.config/i3/icons/font-awesome/white/png/64

    if is_mute ; then
        notify-desktop -r $id -i $iconpath/volume-off.png -t $timeout "Muted" "Speakers are muted" > /dev/null
    else
        volume=`get_volume`

        # Make the bar with the special character ─ (it's not dash -)
        bar=$(seq -s "─" $(($volume / 4)) | sed 's/[0-9]//g')
        # Send the notification
        notify-desktop -r $id -i $iconpath/volume-up.png -t $timeout "Volume" "$volume%<br>$bar" > /dev/null
    fi
}

case $1 in
    up)
	   amixer -D pulse sset Master 5%+ > /dev/null
	   send_notification
	;;
    down)
	   amixer -D pulse sset Master 5%- > /dev/null
	   send_notification
	;;
    mute)
    	# Toggle mute
    	amixer -D pulse sset Master toggle > /dev/null
    	send_notification
	;;
esac
