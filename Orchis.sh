#!/usr/bin/sh

### Orchis installer ###
git clone https://github.com/vinceliuice/Orchis-theme \
		~/.local/tmp/Orchis

cd ~/.local/tmp/Orchis
chmod +x install.sh
./install.sh -c dark -t nord -s compact --tweaks nord macos


### Set the theme ###
gsettings set org.gnome.desktop.interface gtk-theme Orchis-Dark-Compact-Nord
gsettings set org.gnome.desktop.wm.preferences theme Orchis-Dark-Compact-Nord
gsettings set org.gnome.shell.extensions.user-theme name Orchis-Dark-Compact-Nord
