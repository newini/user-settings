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
echo "    source \$HOME/$dirctory_name/bashrc" >> ../.bashrc
echo "" >> ../.bashrc


# Vim
# vim settings
echo "source \$HOME/$dirctory_name/vimrc" > ../.vimrc
# vim cpp syntax & plugin
cp -rT vim ../.vim


# Latexmk
cp latexmkrc ../.latexmkrc
