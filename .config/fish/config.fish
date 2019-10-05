alias fx="firefox --new-instance --profile (mktemp -d)"

alias g="git"
alias ga="git add"
alias gc="git clone"
alias gch="git checkout"
alias gcm="git commit -m"
alias gs="git status"

alias ni="npm install"

function .. ; cd .. ; end

function cheat
  curl cht.sh/$argv
end
