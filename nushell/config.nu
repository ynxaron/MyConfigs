$env.path = ["$HOME/.repos/bin",
        "$HOME/.local/bin",
        "$HOME/.cargo/bin",
        "$HOME/.atuin/bin",
        "$HOME/.spicetify",
        "$HOME/.repos/go"]

alias ls = ~/.repos/bin/lsd
alias nch = ping -c 5 8.8.8.8
alias clr = clear
alias cargo = ~/.cargo/bin/cargo
alias nv = neovide
alias cl = z
alias ytx = ~/.repos/bin/ytx

def srchpkg [pkg] {
    pacman -Qq | grep $pkg
}

def --env y [...args] {
	let tmp = (mktemp -t "yazi-cwd.XXXXXX")
	yazi ...$args --cwd-file $tmp
	let cwd = (open $tmp)
	if $cwd != "" and $cwd != $env.PWD {
		cd $cwd
	}
	rm -fp $tmp
}

#source ~/.zoxide.nu
