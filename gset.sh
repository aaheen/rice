#!/usr/bin/env bash

THEME_NAME=$1

gset1="org.gnome.desktop.interface gtk-theme"
gset2="org.gnome.desktop.wm.preferences theme"
gset3="org.gnome.shell.extensions.user-theme name"

schema_list=("$gset1" "$gset2" "$gset3")

for sch in "${schema_list[@]}"
do
		echo "gsettings set $sch $THEME_NAME"
		gsettings set $sch $THEME_NAME
done

