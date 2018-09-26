#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch all bars
MONITOR=HDMI-0 polybar top &
MONITOR=DVI-I-0 polybar secondary &
MONITOR=DVI-D-0 polybar secondary &

echo "Bars launched..."
