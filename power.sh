#!/bin/sh
# dmenu script used with a keybinding tool like sxhkd to interact with dmenu
choice=$(echo "Shutdown\nReboot\nExit\nSleep\nHibernate\nSwitch OS" | dmenu -i -p "choose action: ")
[ $choice = "Shutdown"	] && doas poweroff
[ $choice = "Reboot"	] && doas reboot
[ $choice = "Exit"	] && pkill dwm
[ $choice = "Sleep"	] && doas zzz && betterlockscreen -l
[ $choice = "Hibernate"	] && doas ZZZ && betterlockscreen -l
[ $choice = "Switch OS"	] && doas ZZZ -R
