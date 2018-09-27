#!/usr/bin/env sh

# Terminate already running dunst instances
killall -q dunst

# Wait until the processes have been shut down
while pgrep -u $(whoami) -x dunst >/dev/null; do sleep 1; done

# Launch dunst
dunst -config ~/.config/dunst/config

notify-send "Dunst is now running" "Notifications will now be showed" -i ~/.config/i3/icons/font-awesome/white/png/64/check.png
