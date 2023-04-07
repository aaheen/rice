if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q theme.sh
	if test -e ~/.theme_history
	theme.sh (theme.sh -l|tail -n1)
	end

	# Optional
	# Bind C-o to the last theme.
	function last_theme
		theme.sh (theme.sh -l|tail -n2|head -n1)
	end

	bind \co last_theme

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
end

# variables

set -U fish_greeting
theme.sh nord

set GH $HOME/code/src/github.com
set EAH $GH/eaheen
set RICE $EAH/rice
set UMN $HOME/code/src/github.umn.edu/heenx008
set CFG $HOME/.config
set FISH_CFG $CFG/fish/config.fish

# aliases
alias yoink="sudo dnf install"
alias fsrc="source $FISH_CFG"
alias fcfg="vim $FISH_CFG && fsrc"
alias cfgOrchis="vim $EAH/misc/sh/orchis-set.sh && orchis-set"
# alias yeet=""
# alias upall="echo \>\> Starting pacman upgrade && pacup && echo \n\>\> Starting yay upgrade && yayup"

alias begone="sudo rm -rf"

alias yeet-discord="begone .config/discord/Cache/ && begone '.config/discord/Code Cache/' && begone .config/discord/GPUCache/"
# alias respot="systemctl restart --user spotifyd.service && systemctl daemon-reload"

# opam configuration
source /home/erik/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
fish_add_path /home/erik/.spicetify
