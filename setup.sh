#!/bin/bash
#
# Type "source setup.sh" on "user-settings" dir!
#
# Created by Eunchong Kim
# Aug., 2020
#

dirctory_name=user-settings

# ================================
# Copy Windows terminal settings
#echo "Copy Windoes Terminal settings"
#result=`cat /proc/version`
#if [[ $result == *"icrosoft"* ]]; then # Include both 'microsoft' and 'Microsoft'
#    this_win_username=eunchong
#    setting_path=/mnt/c/Users/${this_win_username}/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
#    cp windows-terminal/settings.json ${setting_path}
#fi

# ================================
#           bashrc
cat <<EOT >> ../.bashrc

# bashrc user setting
# Encircle 'if [ "\$SSH_TTY" != ""  ]; then; fi', if cannot scp
source $HOME/$dirctory_name/bashrc
EOT


# ================================
#           zshrc
cat <<EOT >> ../.zshrc

# zshrc user setting
# Encircle 'if [ "\$SSH_TTY" != ""  ]; then; fi', if cannot scp
source $HOME/$dirctory_name/zshrc
EOT


# ================================
#           Latexmk
# cp latexmkrc ../.latexmkrc


# ================================
#           Vim
# vim settings
echo "source \$HOME/$dirctory_name/vimrc" > ../.vimrc
# Copy file type plugin & cpp syntax
cp -rT vim ../.vim


# ---------------------
#       Vim packages
# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree

# IndentLine
git clone https://github.com/Yggdroot/indentLine.git ~/.vim/pack/vendor/start/indentLint

# Auto Pairs
# https://github.com/jiangmiao/auto-pairs
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/pack/vendor/start/auto-pairs

# You Complete Me
# If compile failed, install 'sudo apt install build-essential cmake vim-nox python3-dev'
# https://github.com/ycm-core/YouCompleteMe/#linux-64-bit
git clone --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git  ~/.vim/pack/vendor/start/YouCompleteMe
cd ~/.vim/pack/vendor/start/YouCompleteMe
python3 install.py
cd ~/user-settings

echo -e ''
echo -e 'Setup finished!'
