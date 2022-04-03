#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $(whoami) -x polybar >/dev/null; do sleep 1; done

MONITOR1=$(awk '/\*monitor1:(.*)/ { print $2 }') < ~/.Xresources
MONITOR2=$(awk '/\*monitor2:(.*)/ { print $2 }') < ~/.Xresources
MONITOR3=$(awk '/\*monitor3:(.*)/ { print $2 }') < ~/.Xresources

export WIRELESS_NETWORK_INTERFACE=wlp3s0
export WIRED_NETWORK_INTERFACE=enp6s0

# Launch all bars
MONITOR=$MONITOR1 polybar primary &
MONITOR=$MONITOR2 polybar secondary &
MONITOR=$MONITOR3 polybar secondary &

unset WIRELESS_NETWORK_INTERFACE
unset WIRED_NETWORK_INTERFACE

echo "Bars launched..."
