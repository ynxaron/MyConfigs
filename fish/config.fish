if status is-interactive
    # Commands to run in interactive sessions can go here
end
oh-my-posh init fish --config /home/ynx/.config/oh-my-posh/zen.json | source
alias cd=z
alias ls=/home/ynx/.repos/bin/lsd
zoxide init fish | source
~/.repos/bin/pfetch
