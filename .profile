# Things I'm appending to my new PowerBooks /etc/profile

# rbenv
eval "$(rbenv init -)"

# simplify AWS connections
function aws() { ssh ubuntu@$@ -i ~/SR_VPC_Keypair/SR_VPC_Keypair_00.pem ;}

# Make this terminal better
alias ..="cd .."
alias ...="cd ../.."
alias be="bundle exec"
alias lsl="ls -l"

export PS1="\u@:\w$ "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
