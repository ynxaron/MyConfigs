$env.config.buffer_editor = "zed"
$env.config.show_banner = false

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

/home/ynx/.repos/bin/pfetch
source ~/.zoxide.nu
