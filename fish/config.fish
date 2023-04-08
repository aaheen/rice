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

set GH ~/code/src/github.com
set FISH_CFG ~/.config/fish/config.fish

# aliases

alias yoink="sudo dnf install"
alias begone="sudo rm -rf"
alias fsrc="source $FISH_CFG"
alias fcfg="nvim $FISH_CFG && fsrc"
alias yeet-discord="begone .config/discord/Cache/ && begone '.config/discord/Code Cache/' && begone .config/discord/GPUCache/"
alias respotd="systemctl restart --user spotifyd.service && systemctl daemon-reload"
