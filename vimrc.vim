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

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" Press F5 to toggle set line number on/off
:noremap <F5> :set number! number?<CR>

" Press F6 to toggle set paste mode on/off
:noremap <F6> :set paste! paste?<CR>

" change key for split
nnoremap hT <C-W><C-H>
nnoremap jt <C-W><C-J>
nnoremap jT <C-W><C-K>
nnoremap ht <C-W><C-L>

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
