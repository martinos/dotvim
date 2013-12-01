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

map <Leader>t :w<CR> :!ruby -I test:lib:spec %<CR>

"" Copy and paste to the system clipboard see help w_c
map <Leader>c :w !pbcopy<CR>
map <Leader>v :r! pbpaste<CR>

"" Exit insert mode and save buffer
imap <C-s> <esc>:w<CR>
map <C-s> <esc>:w<CR>

"" add to Ruby method some parenthesis
map <Leader>m wv$hs)hx

set pastetoggle=<F3>

