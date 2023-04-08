### GNOME shell extensions ###
gnome-extensions install \
	https://extensions.gnome.org/extension-data/user-themegnome-shell-extensions.gcampax.github.com.v50.shell-extension.zip
gnome-extensions install \ 
	https://extensions.gnome.org/extension-data/caffeinepatapon.info.v46.shell-extension.zip
gnome-extensions install \
	https://extensions.gnome.org/extension-data/rounded-window-cornersyilozt.v11.shell-extension.zip

# enable / disable shell extensions
gnome-extensions disable background-logo@fedorahosted.org

gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable apps-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable places-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable caffeine@patapon.info



# Set up submodules
git submodule init
git submodule update


### GNOME shell theme ###
# Install Orchis
chmod +x ./gtk/Orchis/install.sh
./gtk/Orchis/install.sh -t default -c standard dark -s compact --tweaks nord -l

# Set GTK theme
gsettings set org.gnome.desktop.interface gtk-theme Orchis-Compact-Nord


### Icons ###
wget -qO- https://git.io/papirus-icon-theme-install | sh
gsettings set org.gnome.desktop.interface icon-theme Papirus-Dark


### Cursors ###
# Set up Nordzy cursor theme
chmod +x ./cursors/Nordzy/install.sh
# ./cursors/Nordzy/install.sh
cd cursors/Nordzy
./install.sh
cd ../..

# Set cursor theme
gsettings set org.gnome.desktop.interface cursor-theme Nordzy-cursors-white


