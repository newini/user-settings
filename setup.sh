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
echo "Copy Windoes Terminal settings"
result=`cat /proc/version`
if [[ $result == *"icrosoft"* ]]; then # Include both 'microsoft' and 'Microsoft'
    this_win_username=eunchong
    if [ -d "/mnt/c/Users/eckim" ]; then
        this_win_username=eckim
    fi
    setting_path=/mnt/c/Users/${this_win_username}/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json
    cp windows-terminal/settings.json ${setting_path}
fi

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

# You Complete Me
git clone --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git  ~/.vim/pack/vendor/start/YouCompleteMe
cd ~/.vim/pack/vendor/start/YouCompleteMe
python3 install.py
cd ~/user-settings
