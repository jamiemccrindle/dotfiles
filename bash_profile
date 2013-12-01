# set up PATH
export PATH=$PATH:~/bin

# rbenv
eval "$(rbenv init -)"

# local bash
if [ -f ~/.local_bash_profile ]; then
  source ~/.local_bash_profile
fi

# shortcut for virtual envs
alias ss="source ~/bin/ss"

# java!
export JAVA_HOME=`/usr/libexec/java_home`

# lots of history
export HISTSIZE=10000

# the only editor
export EDITOR=vi

alias ls='ls -hGF'

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# git prompt
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE="."

# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."

# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."

# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"

# colors
GREEN='\[\033[0;32m\]'
ORANGE='\[\033[0;33m\]'
RESET='\[\033[0m\]'

# set prompt to indicate current git branch if available
PS1="[\d \t] ${GREEN}\w${RESET} ${ORANGE}"'$(__git_ps1 "(%s)")'"${RESET}\n> "


