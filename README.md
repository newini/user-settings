# User setting files

## Contents

* **bashrc** - for bash shell
  1. **wsl.sh** - for windows subsystem linux
  2. **git_aliase.sh** - for Git aliases

* **vimrc**, **vim/after/syntax/cpp.vim** - for vim

* **latexmkrc** - for latexmk

## Usage
Type below
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

## Hotkeys
- <F4>: on/off high light search
- <F5>: on/off line number view
- <F6>: on/off paste mode
- <F7>: on/off IndentLinesToggle
- ctrl+e: open directory tree from NERDTree
