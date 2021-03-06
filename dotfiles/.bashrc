
#Table of Contents
#
#   1.  Path Manipulation
#   2.  Aliases
#   3.  Prompt Adjustments
# --------------------------------------------------------------



#   1.  Path Manipulation
# --------------------------------------------------------------

export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin

# RVM
export PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# NODE Js
export NODE_PATH=/usr/local/bin

# NVM
[[ -s /Users/allisonurban/.nvm/nvm.sh ]] && . /Users/allisonurban/.nvm/nvm.sh

# SUBLIME
export EDITOR='subl -w'


#   2.  Aliases
# --------------------------------------------------------------

alias apache="sudo apachectl"
alias chrome="open /Applications/Google\ Chrome.app"

if hash hub 2>/dev/null; then
  alias git=hub
fi


#   3.  Prompt Adjustments
# --------------------------------------------------------------

# Set Colours for Folders
export CLICOLOR=1
export LSCOLORS=AxExFxFxfxaxaxaxaxaxax

# Git branch completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Prompt formatter
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

function parse_git_status {
  # check if we're in a git repo
  is_git=`git status 2> /dev/null`
  if [ -z "$is_git" ] ; then
    return 1
  fi

  # check if there are changes
  status=`git status 2> /dev/null | grep "nothing to commit"`
  dirty_marker="Δ"

  if [ "$status" != "nothing to commit, working directory clean" ] ; then
    echo " $dirty_marker"
  fi
}

function format_prompt {
  local  GREEN="\[\e[32m\]"
  local  EMK="\[\e[30m\]"
  local  TEAL="\[\e[36m\]"
  local  DEFAULT="\[\e[0m\]"

  export PS1="\W$GREEN\$(parse_git_branch)$TEAL\$(parse_git_status)$EMK → $DEFAULT"
}
format_prompt
