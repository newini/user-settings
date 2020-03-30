#!/bin/bash

#-----------------------------------------------
#                   Basic
#-----------------------------------------------
# Bash color
    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
    export CLICOLOR=1
    export LSCOLORS=ExFxBxDxCxegedabagacad
    # ls blue to violet
    export LS_COLORS='di=01;35'

# Add .local to PATH
    export PATH=~/.local/bin:$PATH

# Display if go shell from vim
    [[ -n "$VIMRUNTIME" ]] && PS1="(VIM): \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "

# Set default editor
    export EDITOR='vim'


#-----------------------------------------------
#                   Windows
#-----------------------------------------------
# setting for windows subsystem for linux
#    source $HOME/user-settings/wsl.sh


#-----------------------------------------------
#                   Alias
#-----------------------------------------------
# Faster ssh X11 forwarding
    alias ssh='ssh -XYC4 -c aes128-ctr'

# Git aliases
    source $HOME/user-settings/git_aliases.sh

# Alias
    alias py='python3'

# ROOT TBrowser
    function rb() {
        root -l $1 -e "new TBrowser"
    }

# rm, reject some words and confirm to prevent accident
    function rm() {
        if [[ $1 == "-rf" || $1 == "-fr" ]]; then
            if [[ $2 == "/tmp"* ]]; then
                /bin/rm $@
            else
                if [[ $2 == "./" || $2 == "/" || $2 == "/." || $2 == "." ]]; then
                    echo "YOU USED rm '$@', THINK AGAIN!"
                else
                    temp=$@
                    read -p "YOU USED 'rm $temp', ARE YOU SURE? "
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
