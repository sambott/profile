# .bashrc

alias ls="ls --color=auto"

# Source global definitions
if [ -f /etc/bashrc ]; then
	  . /etc/bashrc
fi

# User specific aliases and functions
if [ -f ~/.get_certificate.sh ]; then
    . ~/.get_certificate.sh
fi


# Don't intercept Ctrl-s
stty -ixon

alias tm="tmux new-session -A -s main"
if [[ ! $TERM =~ screen ]]; then
    exec tmux new-session -A -s main
fi

