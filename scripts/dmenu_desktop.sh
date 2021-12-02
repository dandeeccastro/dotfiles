#!/bin/bash

Result=$(find /usr/share/applications /usr/local/share/applications $HOME/.local/share/applications \
	-type f -name "*.desktop" \
	-exec sh -c 'cat "$0" | grep -m 1 "^Name=" | cut -d"=" -f2' '{}' \; | dmenu $@)

find /usr/share/applications /usr/local/share/applications $HOME/.local/share/applications \
	-type f -name "*.desktop" \
	-exec sh -c 'if [[ $(cat "$0" | grep -m 1 "^Name=" | cut -d"=" -f2) == "$1" ]]; then gtk-launch $(echo "$0" | rev | cut -d"/" -f 1 | rev); fi' '{}' "$Result" \;
