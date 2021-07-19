# User setting files for Linux and WSL


## Contents

```
.
├── README.md
├── atlas_common    # alias which use in lxplus or icepp
├── bashrc          # setting for bash shell
├── git_aliases     # for Git aliases
├── latexmkrc       # for latexmk
├── profile_common  # common setting
├── setup.sh        # Initial setup script
├── vim
│   ├── after
│   │   └── syntax
│   │       └── cpp.vim
│   └── autoload
│       └── plug.vim
├── vimrc           # Vim setup
├── windows-terminal
│   └── settings.json # setting for winfows terminal
├── wsl             # for windows subsystem linux
└── zshrc           # setting for zsh shell

5 directories, 13 files
```


## Usage
Type as below line.
```
source setup.sh
```
It will add line into **.bashrc**, **.vimrc**, **.vim/after/syntax/cpp.vim**,
and copy **latexrc** to **.latexmkrc**


## vim
required version > 8.0

### Plugins
- IndentLinesToggle
- NERDTree
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe): Auto complete. Recommend to install below to use all functions.
```
sudo apt install build-essential cmake vim-nox python3-dev -y
sudo apt install mono-complete golang nodejs default-jdk npm -y
```


### Hotkeys
- <F4>: on/off high light search
- <F5>: on/off line number view
- <F6>: on/off paste mode
- <F7>: on/off IndentLinesToggle
- ctrl+e: open directory tree from NERDTree
