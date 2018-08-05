#!/bin/bash

##
# color
##
    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
    # ls blue to violet
    export LS_COLORS='di=01;35'

##
# go shell from vim 
##
    [[ -n "$VIMRUNTIME" ]] && PS1="(VIM) :\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "

##
# ROOT
##
    source /opt/root/root-6.12.04-build/bin/thisroot.sh

##
# ssh setup
##
    source $HOME/.ssh/ssh.sh

##
# default editor
##
    export EDITOR='vim'

##
# faster ssh X11 forwarding
##
    alias ssh='ssh -XC -c blowfish-cbc,arcfour'

##
# setting for windows subsystem for linux
##
    source $HOME/user-settings/wsl.sh

##
# Git aliases
##
    source $HOME/user-settings/git_aliases.sh
