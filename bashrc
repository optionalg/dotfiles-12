#!/bin/bash
# .bash_profile

# prompt
PS1='\u@\h:\w\$ '

# aliases
if [[ `uname` -eq "Darwin" ]]; then
  alias ls='ls -G'
elif [[ `uname` -eq "Linux" ]]; then
  alias ls='ls --color'
fi

alias ll='ls -l'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# no mail checks
unset MAILCHECK

# add ~/bin to path if exists
test -d "$HOME/bin" && PATH="$PATH:$HOME/bin" && export PATH

# default editor
EDITOR="vim" && export EDITOR

