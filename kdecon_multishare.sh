#!/bin/bash
## copyright (c) 2022, Karim Hussein
# this script is used with kdeconnect to share files by copying their paths to the clipboard, it can be used with sxhkd with a keybinding 
#
url=$(xclip -o -selection clipboard)
for i in $url
do
	kdeconnect-cli -d $(kdeconnect-cli -a --id-only) --share "$i"; notify-send "Sending!"
done

