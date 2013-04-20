" This is standard pathogen and vim setup.
set nocompatible
call pathogen#infect() 
syntax on
filetype plugin indent on

" Avoid the leader pinky-stretch.
let mapleader = ","
let maplocalleader = ","

" Reform search.
set ignorecase
set smartcase

" Make moving between windows a bit more convenient.
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Shift lines up or down.
map <C-k> :m .-2<CR>
map <C-j> :m .+1<CR>

" Return to the last edit position when opening files.
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
set viminfo^=%

" Paredit
let g:paredit_mode = 1

" Rainbow parens
autocmd Filetype clojure RainbowParenthesesToggle

" Light colour scheme
" colors mayansmoke
map :light<CR> :colors mayansmoke<CR>
map :dark<CR> :colors default<CR>

" Omnicompletion
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

" VimClojure keys for Fireplace.
map <LocalLeader>ep cpip 
map <LocalLeader>et :Eval<CR> 
map <LocalLeader>el :.Eval<CR> 
map <LocalLeader>ef :1,$Eval<CR>

" Visually indicate when we're in insert mode.
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" No tabs!
set tabstop=4
set shiftwidth=4
set expandtab

" Two spaces for indent in Clojure.
autocmd Filetype clojure setlocal ts=2 sw=2

" Nerd tree
map :nt<CR> :NERDTreeToggle<CR>
