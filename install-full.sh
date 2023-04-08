### Initial install ###
chmod +x install.sh
./install.sh

sudo echo "Authenticated sudo"

#######################

### Fonts ###
# not made yet
# :)


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
#!/usr/bin/fish

# theme.sh
sudo curl -Lo /usr/bin/theme.sh 'https://git.io/JM70M' && sudo chmod +x /usr/bin/theme.sh
echo "theme.sh nord" >> ~/.config/fish/config.fish

# fisher plugin manager
# curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish
# source fisher.fish
# fisher install jorgebucaran/fisher

# tide: a configurable zsh-style prompt for fish
# fisher install IlanCosman/tide@v5
# echo "Run \"tide configure\" to set up the prompt."
# echo "My Tide prompt choices are (3, 2, 2, 1, 1, 5, 2, 3, 1, 2, 2)"
#tide configure

### Firefox ###
#firefox ./firefox/themes/minimalist-nord.xpi --new-instance &
#firefox-developer ./firefox/themes/minimalist-nord.xpi --new-instance &
#firefox-nightly ./firefox/themes/minimalist-nord.xpi --new-instance &


#######################
echo "Installation complete."
