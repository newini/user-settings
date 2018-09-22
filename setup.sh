#!/bin/bash
#
# Type "source setup.sh" on "user-settings" dir!
#
# Created by Eunchong Kim, 2018
#

dirctory_name=user-settings

# bashrc
echo "" >> ../.bashrc
echo "##" >> ../.bashrc
echo "# bashrc user setting" >> ../.bashrc
echo "##" >> ../.bashrc
echo "    source \$HOME/$dirctory_name/bashrc" >> ../.bashrc
echo "" >> ../.bashrc


# Vim
# vim settings
echo "source \$HOME/$dirctory_name/vimrc" > ../.vimrc
# vim cpp syntax
mkdir -p ../.vim/after/syntax
echo "source \$HOME/$dirctory_name/vim/after/syntax/cpp.vim" > ../.vim/after/syntax/cpp.vim


# Latexmk
cp latexmkrc ../.latexmkrc
