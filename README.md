# User setting files


## Contents

* **bashrc** - setting for bash shell

* zshrc - setting for zsh shell

* profile_common - common setting
  1. **wsl** - for windows subsystem linux
  2. **git________aliase** - for Git aliases

* **vimrc**, **vim/after/syntax/cpp.vim** - for vim

* **latexmkrc** - for latexmk

* windows-terminal/setting.json - setting for winfows terminal


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

### Hotkeys
- <F4>: on/off high light search
- <F5>: on/off line number view
- <F6>: on/off paste mode
- <F7>: on/off IndentLinesToggle
- ctrl+e: open directory tree from NERDTree
