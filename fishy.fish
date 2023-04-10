#!/usr/bin/fish

cp ./fish/config.fish ~/.config/fish/config.fish

# fisher plugin manager
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish
source fisher.fish
fisher install jorgebucaran/fisher

# tide: a configurable zsh-style prompt for fish
fisher install IlanCosman/tide@v5


