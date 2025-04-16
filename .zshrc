# rbenv
eval "$(rbenv init -)"

# Make this terminal better
alias ..="cd .."
alias ...="cd ../.."
alias be="bundle exec"
alias bet="RAILS_ENV=test bundle exec"
alias lsl="ls -l"
alias ls='ls -GFh'
alias find3000='lsof -i tcp:3000'

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Enable substitution in the prompt.
setopt PROMPT_SUBST
PROMPT='ian@:%F{green}%~%F{yellow}$(parse_git_branch)%F{white}$ '

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# https://stackoverflow.com/questions/6127328/how-can-i-delete-all-git-branches-which-have-been-merged
alias clean_house='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

echo 'export EDITOR="code --wait"'
