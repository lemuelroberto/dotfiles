#!/bin/bash

# Disables screen turning off automatically
# it was responsible for a bug in my machine.
xset s off
xset dpms 0 0 0

systemctl --user import-environment DISPLAY XAUTHORITY

if which dbus-update-activation-environment >/dev/null 2>&1; then
  dbus-update-activation-environment DISPLAY XAUTHORITY
fi

# Set brazilian keyboard layout
setxkbmap -layout br

exec i3
