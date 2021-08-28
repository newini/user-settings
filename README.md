# User setting files for Linux and WSL



## 1. Contents

```
tree
.
├── README.md
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

5 directories, 12 files
```



## 2. Preparation
### 2.1 Install zsh
```
sudo apt install zsh
```

### 2.2 Install to use YouCompleteMe
```
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
```



## 3. Usage
Type as below line.
```
source setup.sh
```
It will add line into `.bashrc`, `.zshrc`, `.vimrc`, `.vim/after/syntax/cpp.vim`, and copy `latexrc` to `.latexmkrc`.


## 4. Detail
### 4.1 vim
required version > 8.0

#### 4.1.1 Install Plugins
- Auto pairs: in `auto-pairs` directory
- IndentLinesToggle: in `indentLint` directory
- NERDTree: in `nerdtree` directory
- [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe): in `YouCompleteMe` directory. Auto complete.


#### 4.1.2 Hotkeys
- <F4>: on/off high light search
- <F5>: on/off line number view
- <F6>: on/off paste mode
- <F7>: on/off IndentLinesToggle
- ctrl+e: open directory tree from NERDTree
