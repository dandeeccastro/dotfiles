#!/bin/bash
Sys=$(find /usr/share/applications -type f -name "*.desktop" -ls | tr -s ' ' | cut -d' ' -f12-)
Loc=$(find /usr/local/share/applications -type f -name "*.desktop" -ls |tr -s ' ' | cut -d' ' -f12-)
Usr=$(find $HOME/.local/share/applications -type f -name "*.desktop" -ls |tr -s ' ' | cut -d' ' -f12-)

function get_desktop_name( ) {
	cat "$1" | grep -m 1 "^Name=" | cut -d'=' -f2
}

function get_desktop_filename( ) {
	echo "$@" | awk -F '/' '{ print $NF }'
}

Result=$(
	echo -e "$Sys\n$Usr\n$Loc" | while read Line; do 
		get_desktop_name "$Line" 
	done | dmenu $@ # -fn "Iosevka:size=10" -nb "#222222" -nf "#666666" -sb "#f5951d"
)

echo -e "$Sys\n$Usr\n$Loc" | while read Line; do 
	if [[ $(get_desktop_name "$Line") == $Result ]]; then
		gtk-launch $(get_desktop_filename $Line)
		break
	fi
done 
