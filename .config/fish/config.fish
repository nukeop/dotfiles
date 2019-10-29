alias fx="firefox --new-instance --profile (mktemp -d)"

alias tmux="env TERM=xterm-256color tmux"
alias enw="env TERM=xterm-256color emacs -nw"

alias g="git"
alias ga="git add"
alias gc="git clone"
alias gcm="git commit -m"
alias gch="git checkout"
alias gs="git status"

alias dcu="docker-compose up"
alias ls="exa --icons"
alias cat="bat"

alias ni="npm install"

source ~/.cargo/env

function .. ; cd .. ; end

function cheat
  curl cht.sh/$argv
end