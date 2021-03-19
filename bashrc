#!/bin/bash
#
# ====================================
# Author: Eunchong Kim
# Date: Mar., 2021
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
#                   Macros
#-----------------------------------------------
# rm, reject some words and confirm to prevent accident
# for zsh, it has this function
function rm() {
    if [[ $1 == "-rf" || $1 == "-fr" ]]; then
        if [[ $2 == "/tmp"* ]]; then
            /bin/rm $@
        else
            if [[ $2 == "./" || $2 == "/" || $2 == "/." || $2 == "." ]]; then
                echo "YOU USED rm '$@', THINK AGAIN!"
            else
                temp=$@
                echo -n "YOU USED 'rm $temp', ARE YOU SURE? "
                read REPLY
                if [[ $REPLY =~ ^[Yy]$ ]]; then
                    /bin/rm $@
                fi
            fi
        fi
    elif [[ $1 == "-rf." || $1 == "-fr." ]]; then
        echo "YOU USED 'rm $@', THINK AGAIN!"
    else
        /bin/rm $@
    fi
}
alias rm=rm


#-----------------------------------------------
#           Include common setting
#-----------------------------------------------
if [ -z "$VIMRUNTIME" ]; then
    source $HOME/user-settings/profile_common
fi
