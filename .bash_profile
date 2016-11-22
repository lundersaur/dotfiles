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

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@:\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# autojump-related (brew-installed)
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# git autocompletion (brew-installed)
source ~/.git-completion.bash

# Run this to make git logs nicer
#git config --global alias.lg "log --color --graph --abbrev-commit --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset'"
