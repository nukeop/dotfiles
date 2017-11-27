[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias tmux='TERM=xterm-256color tmux'

export LANG=en_US.UTF-8
export PS1="\e[0;34m  \[\e[0;32m\]\W \[\e[0;33m\]λ \[\e[0m\] "
