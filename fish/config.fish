if status is-interactive
	/home/ynx/.atuin/bin/atuin init fish | source
end
export USERNAME="aron"
export HOME="/home/ynx"
export LANG=en_IN.UTF-8
oh-my-posh init fish --config $HOME/.config/oh-my-posh/zen.json | source
alias cd=z
alias cdi=zi
alias ls=lsd
alias nch="ping -c 5 8.8.8.8"
alias du=dust
alias yt-dlp=$HOME/.repos/yt-dlp/yt-dlp

function zmm
	mpv "$(fzf)"
end

function zmv 
	vlc "$(fzf)"
end

function zmz
	zed "$(fzf)"
end

function rm
	mv $argv[1] $HOME/.local/share/Trash/files
	echo "Moved '$argv[1]' to Trash"
end

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin 
fish_add_path $HOME/.repos/bin 
fish_add_path $HOME/.atuin/bin 
fish_add_path $HOME/.spicetify 
fish_add_path $HOME/.repos/go

zoxide init fish | source
~/.repos/bin/pfetch
