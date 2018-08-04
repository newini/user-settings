"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic settings
"
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set enc=utf-8
set fencs=ucs-bom,utf-8,iso-2022-jp,euc-jp,cp932,latin1

syntax on

set background=dark

set guifont=Lucida_Console\ 16


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting Hot keys
"
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" Press F5 to toggle set line number on/off
:noremap <F5> :set number! number?<CR>

" Press F6 to toggle set paste mode on/off
:noremap <F6> :set paste! paste?<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change key for split
"
nnoremap hT <C-W><C-H>
nnoremap jt <C-W><C-J>
nnoremap jT <C-W><C-K>
nnoremap ht <C-W><C-L>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" have Vim jump to the last position when reopening a file
"
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabe bar
"
set showtabline=2
"hi TabLine      guifg=#333 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none
hi TabLineSel   guifg=#666 guibg=#222 gui=bold ctermfg=231 ctermbg=235 cterm=bold
"hi TabLineFill  guifg=#999 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Last Status Line
"
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
