#!/bin/bash
#
# Type "source setup.sh" on "user-settings" dir!
#
# Created by Eunchong Kim
# Aug., 2020
#

dirctory_name=user-settings

# ================================
#           bashrc
echo "" >> ../.bashrc
echo "# bashrc user setting" >> ../.bashrc
echo "source $HOME/$dirctory_name/bashrc" >> ../.bashrc
echo "" >> ../.bashrc


# ================================
#           zshrc
echo "" >> ../.zshrc
echo "# zshrc user setting" >> ../.zshrc
echo "source $HOME/$dirctory_name/zshrc" >> ../.zshrc
echo "" >> ../.zshrc


# ================================
#           Latexmk
cp latexmkrc ../.latexmkrc


# ================================
#           Vim
# vim settings
echo "source \$HOME/$dirctory_name/vimrc" > ../.vimrc
# vim cpp syntax & plugin
cp -rT vim ../.vim

# ---------------------
#       packages
# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree

# IndentLine
git clone https://github.com/Yggdroot/indentLine.git ~/.vim/pack/vendor/start/indentLint
