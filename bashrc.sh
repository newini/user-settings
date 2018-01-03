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
# Xming X Server DISPLAY
##
    export DISPLAY=localhost:0.0

##
# ROOT
##
    source /opt/root/root-6.12.04-build/bin/thisroot.sh

##
# GEANT4
##
    source /opt/geant4/geant4.10.03.p01-install/bin/geant4.sh

##
# Change Directory
##
    alias onedrive="cd /mnt/c/Users/eckim/OneDrive/workspace"
    alias itk='cd /mnt/c/Users/eckim/Desktop/itk/'

##
# mkdir option
##
    alias mkdir='mkdir -m 755'

##
# set -o vi
##
    set -o vi

##
# OPEN
##
    alias open='xdg-open'

##
# ssh 
##
    source $HOME/.ssh/ssh.sh

##
# default editor
##
    export EDITOR='vim'
