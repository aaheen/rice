# Variables
set RICE $HOME/code/src/github.com/eaheen/rice

# Copy over dots
cp -Lru	--backup=simple $RICE/fish	$HOME/.config/
cp -Lru	--backup=simple $RICE/nvim	$HOME/.config/
cp -Lru	--backup=simple $RICE/Typora/themes		$HOME/.config/
cp -Lru	--backup=simple $RICE/BetterDiscord		$HOME/.config/

# Wallpaper
cp -Lu	--backup=simple $RICE/.bg 	$HOME/
