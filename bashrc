#!/bin/bash
# .bashrc

# source global bashrc for CentOS
if [[ `cut -d' ' -f 1 /etc/issue 2>/dev/null | head -n 1` == "CentOS" ]]; then
  if [ -f /etc/bashrc ]; then
    . /etc/bashrc
  fi
fi

# modify prompt: user@hostname:/full/pwd$
PS1='\u@\h:\w\$ '

# modify window title for xterm and compatible
case "$TERM" in
xterm*)
  PS1="\[\e]0;\u@\h: \w\a\]$PS1"
  ;;
*)
  ;;
esac

# aliases
## ls
if [ `uname` == "Darwin" ]; then
  alias ls='ls -G'
elif [ `uname` == "Linux" ]; then
  alias ls='ls --color'
fi

## more ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

## stat - make Mac OS X `stat' behave like Linux
if [ `uname` == "Darwin" ]; then
  alias stat='stat -x'
fi

## grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# no mail checks
unset MAILCHECK

# add ~/bin to path if exists
if [ -d "$HOME/bin" ]; then
  export PATH="$PATH:$HOME/bin"
fi

# user/machine specific environments
# rignazio@xps (ubuntu) - export local perl paths
if [ $HOSTNAME == "xps" ]; then
  export PERL_LOCAL_LIB_ROOT="/home/rignazio/perl5"
  export PERL_MB_OPT="--install_base /home/rignazio/perl5"
  export PERL_MM_OPT="INSTALL_BASE=/home/rignazio/perl5"
  export PERL5LIB="/home/rignazio/perl5/lib/perl5/x86_64-linux-gnu-thread-multi:/home/rignazio/perl5/lib/perl5"
  export PATH="/home/rignazio/perl5/bin:$PATH"
fi
