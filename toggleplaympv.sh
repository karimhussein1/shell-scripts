#!/bin/sh
# # copyright (c) 2022, Karim Hussein
# this script is used to toggle mpv play/pause from any work station in dwm
# using xdotool and sxhkd with a keybinding
for i in $(xdotool search --class mpv)
do
	xdotool key --window $i space
done
