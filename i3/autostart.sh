#!/usr/bin/zsh

# This file lists the application to autostart on login or refresh

# nitrogen --restore

pkill polybar
polybar top &

pkill compton
compton &

psgrep redshift && redshift -l 47.606209:-122.332071

dunst -conf ~/.config/dunst/dunstrc &
