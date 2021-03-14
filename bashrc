#!/bin/bash
#
# ====================================
# Author: Eunchong Kim
# Date: Aug., 2020
# Project: user-settings
# Description: bashrc
# ====================================


#-----------------------------------------------
#                   Basic
#-----------------------------------------------
# Bash color
    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
    # ls blue to violet
    export LS_COLORS='di=01;35'

# Display if go shell from vim
    [[ -n "$VIMRUNTIME" ]] && PS1="(VIM): \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "


#-----------------------------------------------
#           Include common setting
#-----------------------------------------------
if [ -z "$VIMRUNTIME" ]; then
    source $HOME/user-settings/profile_common
fi
