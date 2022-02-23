#!/bin/bash
# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

# Configure PS1
PS1="\u@\h \W\$ "

# Source before the following so that all the paths work
# From Jessie Frazelle at https://github.com/jessfraz/dotfiles under MIT license
for file in ~/.{paths,exports,aliases,completions}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file

# Go to directory using cd if command is a directory
shopt -s autocd

# Autocorrect typos in path names when using cd
shopt -s cdspell

# Append to the Bash history file, rather than overwriting it
shopt -s histappend
