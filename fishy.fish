### Fish ###
#!/usr/bin/fish

# theme.sh
sudo curl -Lo /usr/bin/theme.sh 'https://git.io/JM70M' && sudo chmod +x /usr/bin/theme.sh
echo "theme.sh nord" >> ~/.config/fish/config.fish

# fisher plugin manager
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish
source fisher.fish
fisher install jorgebucaran/fisher

# tide: a configurable zsh-style prompt for fish
fisher install IlanCosman/tide@v5
echo "Run \"tide configure\" to set up the prompt."
echo "My Tide prompt choices are (3, 2, 2, 1, 1, 5, 2, 3, 1, 3, 2, 2)"

# tide configure

