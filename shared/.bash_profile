# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$HOME/bin:$HOME/.local/bin:$PATH

alias proxy="~/cntlm -c ~/.cntlm.conf -f -I -v"

alias proxyon="export http_proxy=\"http://localhost:41285\" && export https_proxy=\"http://localhost:41285\""
alias proxyoff="unset http_proxy && unset https_proxy"

alias randompass='date +%s | sha256sum | base64 | head -c 32 ; echo'
alias grep='grep --color=auto'

complete -cf sudo

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$"
alias ls='ls -GFh'
