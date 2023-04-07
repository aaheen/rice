# Set up GNOME shell user theme extension
gnome-extensions install user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com


# Set up Orchis
cd gtk/Orchis
git pull

# Install script 
chmod +x install.sh
./install.sh -t nord -s compact --tweaks nord -l

# Set GTK theme
gsettings set org.gnome.desktop.interface gtk-theme Orchis-Compact-Nord

# Return to repo root 
cd ../..


# Set up Nordzy cursor theme
cd cursors/Nordzy
chmod +x install.sh
./install.sh

# Set cursor theme
gsettings set org.gnome.desktop.interface cursor-theme Nordzy-cursors

# Return to repo root
cd ../..

