#!/bin/zsh
#
# ====================================
# Author: Eunchong Kim
# Date: Aug., 2020
# Project: user-settings
# Description: zshrc
# ====================================


#-----------------------------------------------
#                   Basic
#-----------------------------------------------
# zsh color
    export PROMPT="%F{cyan}%n%F{white}@%F{green}%m:%F{yellow}%1~%F{white}$ "

# Display if go shell from vim
    [[ -n "$VIMRUNTIME" ]] && PROMPT="(VIM): %F{cyan}%n%F{white}@%F{green}%m:%F{yellow}%1~$ "


#-----------------------------------------------
#           Include common setting
#-----------------------------------------------
if [ -z "$VIMRUNTIME" ]; then
    source $HOME/user-settings/profile_common
fi

#-----------------------------------------------
#           Disable share history
#-----------------------------------------------
    unsetopt share_history
