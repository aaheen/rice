### Fonts ###
# Downloads
mkdir fc && cd fc

curl -sL 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Mononoki.zip' -o Mononoki.zip
curl -sL 'https://fonts.google.com/download?family=Open%20Sans' -o OpenSans.zip
curl -sL 'https://fonts.google.com/download?family=Overpass' -o Overpass.zip
curl -sL 'https://fonts.google.com/download?family=Crimson%20Pro' -o CrimsonPro.zip 


unzip -nq Mononoki.zip
cp -u 'Mononoki Nerd Font Complete Regular.ttf' ~/.local/share/fonts/
cp -u 'Mononoki Nerd Font Complete Bold.ttf' ~/.local/share/fonts/
cp -u 'Mononoki Nerd Font Complete Italic.ttf' ~/.local/share/fonts/
cp -u 'Mononoki Nerd Font Complete Bold Italic.ttf' ~/.local/share/fonts/

unzip -nq OpenSans.zip -d ~/.local/share/fonts
unzip -nq Overpass.zip -d ~/.local/share/fonts
unzip -nq CrimsonPro.zip -d ~/.local/share/fonts

cd ..
rm -r fc

# Refresh font cache
fc-cache -f

# Set GNOME variables
#gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font true
gsettings set 'org.gnome.destkop.interface' font-hinting 'full' && \
gsettings set 'org.gnome.desktop.wm.preferences' titlebar-font 'Open Sans Bold 11' && \
gsettings set 'org.gnome.desktop.interface' font-name 'Open Sans 11' && \
gsettings set 'org.gnome.desktop.interface' monospace-font-name 'Mononoki Nerd Font 11' && \
gsettings set 'org.gnome.desktop.interface' document-font-name 'Crimson Pro 12'

