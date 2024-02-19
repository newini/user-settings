#!/bin/bash
#
# Created by Eunchong Kim
# Nov. 2022
#

# ================================
# Debug
set -x


# ================================
#           bashrc
cat <<EOT >> ~/.bashrc

# bashrc user setting
# Encircle 'if [ "\$SSH_TTY" != ""  ]; then; fi', if cannot scp
source $HOME/user-settings/bashrc
EOT
echo -e ''


# ================================
#           zshrc
cat <<EOT >> ~/.zshrc

# zshrc user setting
# Encircle 'if [ "\$SSH_TTY" != ""  ]; then; fi', if cannot scp
source $HOME/user-settings/zshrc
EOT
echo -e ''


# ================================
#           Latexmk
# cp latexmkrc ~/.latexmkrc


# ================================
#           Vim
# vim settings
echo "source $PWD/vimrc" > ~/.vimrc
# Copy file type plugin & cpp syntax
cp -rT vim ~/.vim
echo -e ''


# ---------------------
#       Vim packages
# ALe
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/git-plugins/start/nerdtree
echo -e ''

# IndentLine
git clone https://github.com/Yggdroot/indentLine.git ~/.vim/pack/git-plugins/start/indentLint
echo -e ''

# Auto Pairs
# https://github.com/jiangmiao/auto-pairs
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/pack/git-plugins/start/auto-pairs
echo -e ''

# You Complete Me
# If compile failed, install 'sudo apt install build-essential cmake vim-nox python3-dev'
# https://github.com/ycm-core/YouCompleteMe/#linux-64-bit
git clone --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git  ~/.vim/pack/git-plugins/start/YouCompleteMe
echo -e ''
cd ~/.vim/pack/git-plugins/start/YouCompleteMe
echo -e ''
python3 install.py
echo -e ''
cd ~/user-settings
echo -e ''

echo -e 'Setup finished!'
