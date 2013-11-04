filetype off 
call pathogen#infect()
Helptags

syntax on
filetype plugin indent on
set nocompatible
set smarttab
set autoindent
set encoding=utf-8
set showcmd

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set bs=2

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" To better distinguish cursor and parenthesis matcher
hi MatchParen ctermfg=black ctermbg=white guifg=black guifg=white 

let mapleader=','
map <Esc><Esc> :w<CR>

map <Leader>t :w<CR> :!ruby %<CR>
map <C-s> <esc>:w<CR>
map <Leader>c :%w !xclip 
imap <C-s> <esc>:w<CR>

