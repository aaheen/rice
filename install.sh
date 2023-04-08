### Basic setup ###
# Set up GNOME shell user theme extension
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com

# Set up submodules
git submodule init
git submodule update


### GNOME shell theme ###
# Install Orchis
chmod +x ./gtk/Orchis/install.sh
./gtk/Orchis/install.sh -t default -c standard -s compact --tweaks nord -l

# Set GTK theme
gsettings set org.gnome.desktop.interface gtk-theme Orchis-Compact-Nord


### Cursors ###
# Set up Nordzy cursor theme
chmod +x ./cursors/Nordzy/install.sh
# ./cursors/Nordzy/install.sh
cd cursors/Nordzy
./install.sh
cd ../..

# Set cursor theme
gsettings set org.gnome.desktop.interface cursor-theme Nordzy-cursors

