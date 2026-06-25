#!/bin/bash

# Disables screen turning off automatically
# it was responsible for a bug in my machine.
xset s off
xset dpms 0 0 0

# makes the EGL/GBM path work
export MESA_LOADER_DRIVER_OVERRIDE=iris

# Tell portals / toolkits which desktop this is (used to pick a portal backend)
export XDG_CURRENT_DESKTOP=i3

systemctl --user import-environment DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP

if which dbus-update-activation-environment >/dev/null 2>&1; then
    dbus-update-activation-environment DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP
fi

# Activate the systemd graphical session so xdg-desktop-portal (and anything
# else that needs graphical-session.target) is allowed to start.
systemctl --user start i3-session.target

# Set brazilian keyboard layout
setxkbmap -layout br

export GSK_RENDERER=cairo

exec i3
