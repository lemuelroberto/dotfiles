#!/bin/bash
# source for ~/.bash_profile
# interactive, non-login shells do not source this config

# Source .bashrc file
if [[ -r "${HOME}/.bashrc" ]]; then
  # shellcheck source=/dev/null
  source "${HOME}/.bashrc"
fi

# Execute startx if on TTY 1
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
