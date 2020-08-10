"==========================
" Basic settings
"==========================
    set tabstop=4           " The width of a TAB is set to 2
    set shiftwidth=4        " Indents will have a width of 4
    set softtabstop=4       " Sets the number of columns for a TAB
    set expandtab           " Expand TABs to spaces
    set autoindent
    set smartindent         " Auto indent based on syntax
    set backspace=indent,eol,start " Fix Backspace and delete problems

    set enc=utf-8           " encode
    set fencs=ucs-bom,utf-8,iso-2022-jp,euc-jp,cp932,latin1

    set formatoptions-=ro   " Disable auto comment out when indent

"==========================
" HotKeys settings
"==========================
    " Toggle off/on
    noremap <F4> :set hlsearch! hlsearch?<CR>   " search highlighting
    noremap <F5> :set number! number?<CR>       " line
    noremap <F6> :set paste! paste?<CR>         " paste
    noremap <F7> :IndentLinesToggle<CR>         " indentline

    " HotKeys for split
    nnoremap hT <C-W><C-H>
    nnoremap jt <C-W><C-J>
    nnoremap jT <C-W><C-K>
    nnoremap ht <C-W><C-L>

    " NERDTree
    map <C-e> :NERDTreeToggle<CR>

"==========================
" Have Vim jump to the last position when reopening a file
"==========================
    if has("autocmd")
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
    endif

"==========================
" Search settings
"==========================
    set ignorecase  " Ingnore capital alphabet
    set hlsearch    " Highlighe
    set incsearch   " Realtime searching

"==========================
" Appearance settings
"==========================
    syntax on           " Color for language
    set background=dark " Dark theme
    set guifont=Lucida_Console\ 16

    set list              " Display tabs as ^I
    set listchars=tab:>-  " Display tabs as characters

"    set foldmethod=syntax  " Syntax folding

    " Tabe bar
    set showtabline=2
    hi TabLine      guifg=#333333 guibg=#222222 gui=none ctermfg=254 ctermbg=238 cterm=none
    hi TabLineSel   guifg=#666666 guibg=#222222 gui=bold ctermfg=231 ctermbg=235 cterm=bold
    hi TabLineFill  guifg=#999999 guibg=#222222 gui=none ctermfg=254 ctermbg=238 cterm=none

"==========================
" Last Status Line
"==========================
    set laststatus=2            " set the bottom status bar
    "                           " (0:表示しない、1:2つ以上ウィンドウがある時だけ表示)

    " default the statusline when entering Vim
    hi statusline guibg=White guifg=Black ctermbg=0 ctermfg=6

    " Formats the statusline
    set statusline=%f                                                     " file name
    set statusline+=[%{strlen(&fenc)?&fenc:'none'},                       " file encoding
    "set statusline+=[ENC=%{&fileencoding}]  " file encoding
    set statusline+=%{&ff}]                                               " file format
    "set statusline+=%y                                                   " filetype
    set statusline+=%h                                                    " help file flag
    set statusline+=[%{getbufvar(bufnr('%'),'&mod')?'modified':'saved'}]  " modified flag
    "set statusline+=%m                      " 変更チェック表示
    set statusline+=%r                                                    "read only flag
    set statusline+=%w                                                    " プレビューウインドウなら[Prevew]と表示

    set statusline+=\ %=                                                  " align left
    set statusline+=Line:%l/%L                                            " line X of Y [percent of file]
    set statusline+=\ Col:%c                                              " current column
    set statusline+=\ [%p%%]\                                             " line X of Y [percent of file]
    "set statusline+=\ Buf:%n                                              " Buffer number
    "set statusline+=\ [%b][0x%B]\                                         " ASCII and byte code under cursor

"==========================
" Auto change indent width
"==========================
    augroup fileTypeIndent
        autocmd!
        autocmd BufNewFile,BufRead *.rb,*.erb,*.html,*.cxx,*.cpp,*.C,*.h setlocal tabstop=2 softtabstop=2 shiftwidth=2
    augroup END

"==========================
" Automatically removing all trailing whitespace
" Every time the user issues a :w command, Vim will automatically remove all trailing whitespace before saving
"==========================
    autocmd BufWritePre * %s/\s\+$//e

"==========================
" Plugins
"==========================
    filetype plugin indent on

    call plug#begin()
        Plug 'Yggdroot/indentLine' " Display thin vertical lines at each indentation level for code indented with spaces
    call plug#end()
    autocmd Filetype json let g:indentLine_setConceal = 0 " Must disable indentline for JSON file

