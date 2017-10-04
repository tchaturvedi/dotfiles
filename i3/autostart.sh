#!/usr/bin/zsh

# This file lists the application to autostart on login or refresh

nitrogen --restore

#pkill compton
#compton &

pkill polybar && sleep 0.01 
polybar top &

psgrep redshift && redshift -l 47.606209:-122.332071 &

pkill dunst
dunst -conf ~/.config/dunst/dunstrc &
