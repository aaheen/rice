### Initial install ###
chmod +x install.sh
./install.sh

sudo echo "Authenticated sudo"

#######################

### Fonts ###
./fonts.sh

### Typora themes ###
mkdir ~/.config/Typora
mkdir ~/.config/Typora/themes
cp -ru ./Typora/themes/* ~/.config/Typora/themes/

### BetterDiscord ###
mkdir ~/.config/BetterDiscord
mkdir ~/.config/BetterDiscord/themes
mkdir ~/.config/BetterDiscord/plugins

cp -u ./BetterDiscord/themes/* ~/.config/BetterDiscord/themes/
cp -u ./BetterDiscord/plugins/* ~/.config/BetterDiscord/plugins/


### Neovim ###
cp -ru ./nvim ~/.config/ 

# See https://github.com/wbthomason/packer.nvim for more info on this section

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

echo "vim.cmd [[colorscheme nord]]" >> ~/.config/nvim/init.lua

### Fish ###
fish ./fish.fish 


### Firefox ###
#firefox ./firefox/themes/minimalist-nord.xpi --new-instance &
#firefox-developer ./firefox/themes/minimalist-nord.xpi --new-instance &
#firefox-nightly ./firefox/themes/minimalist-nord.xpi --new-instance &


#######################
echo "Installation complete."
