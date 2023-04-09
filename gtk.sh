# Set up submodules
git submodule init
git submodule update


### GNOME shell extensions ###
# Download & Install extensions

gnome-extensions install \
https://extensions.gnome.org/extension-data/user-themegnome-shell-extensions.gcampax.github.com.v50.shell-extension.zip

gnome-extensions install \
https://extensions.gnome.org/extension-data/caffeinepatapon.info.v46.shell-extension.zip

gnome-extensions install \
https://extensions.gnome.org/extension-data/rounded-window-cornersyilozt.v11.shell-extension.zip

# Disable default extensions
gnome-extensions disable background-logo@fedorahosted.org

# Enable extensions
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable apps-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable places-menu@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable caffeine@patapon.info


### GNOME shell theme ### [Orchis]
# Install GTK theme
chmod +x ./gtk/Orchis/install.sh
./gtk/Orchis/install.sh -t default -c dark standard -s compact --tweaks nord -l
unlink ~/.config/gtk-4.0/gtk-dark.css && ln -s ~/.themes/Orchis-Dark-Compact-Nord/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/

# Set GTK theme
gsettings set org.gnome.desktop.interface gtk-theme Orchis-Compact-Nord


### Icons ### [Papirus]
# Install icon theme
wget -qO- https://git.io/papirus-icon-theme-install | sh

# Set icon theme
gsettings set org.gnome.desktop.interface icon-theme Papirus-Dark


### Cursors ### [Nordzy]
# Install cursor theme
chmod +x ./cursors/Nordzy/install.sh
# ./cursors/Nordzy/install.sh
cd cursors/Nordzy
./install.sh
cd ../..

# Set cursor theme
gsettings set org.gnome.desktop.interface cursor-theme Nordzy-cursors-white


