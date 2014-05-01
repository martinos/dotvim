filetype off 
call pathogen#infect()
Helptags

set tags+=.git/gems.tags

syntax on
filetype plugin indent on

set number
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
" Colorscheme
syntax enable
if has('gui_running')
   set background=light
else
   set background=dark
endif
" colorscheme solarized

"" To better distinguish cursor and parenthesis matcher

" hi MatchParen cterm=bold ctermbg=none ctermfg=red
hi MatchParen ctermfg=black ctermbg=white guifg=black guifg=white 

let mapleader=','

map <Esc><Esc> :w<CR>

set makeprg=ruby\ -I\ lib:test:spec\ %
map <Leader>t :w<CR>:silent !clear<CR> :make! %<CR>
map <Leader>s :w<CR>:silent !clear<CR> :!ruby -c  %<CR>
map <Leader>e :botright copen<CR>
map <Leader>a ggVG
map <Leader>w :!bundle exec rake && git add .<CR>:! git status<CR>
map <Leader>2 :!git commit -v<CR>

" Display structures
map <Leader>o :silent !clear<CR> :!rbshow %<CR>
map <Leader>n :silent !clear<CR> :!rbtestshow %<CR>
" map <Leader>t :w<CR> :!ruby -I test:lib:spec %<CR>
" map <Leader>t :w<CR> :!bundle exec rspec %<CR>

"" Copy and paste to the system clipboard see help w_c
map <Leader>c :w !pbcopy<CR>
map <Leader>v :r! pbpaste<CR>

"" Exit insert mode and save buffer
imap <C-s> <esc>:w<CR>
map <C-s> <esc>:w<CR>

"" add to Ruby method some parenthesis
map <Leader>m wv$hs)hx

function IndentV()
  Tabularize /^[^:]*\zs:/r1c0l0
  Tabularize /^[^=>]*\zs=>/l1
endfunction
map <Leader>iv :call IndentV()<cr>


"" Disable Ex mode
map Q <Nop>
set pastetoggle=<F3>

" Do we have local vimrc?
if filereadable('.vimrc.local')
  " If so, go ahead and load it.
  source .vimrc.local
endif

autocmd FileType go compiler go
autocmd FileType go map <Leader>t :w<CR>:make! %<CR>
autocmd FileType go map <Leader>r :!go run %<CR>

highlight Search ctermbg=black ctermfg=yellow cterm=underline

