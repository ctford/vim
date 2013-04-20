" This is standard pathogen and vim setup.
set nocompatible
call pathogen#infect() 
syntax on
filetype plugin indent on

" Avoid the leader pinky-stretch.
let mapleader = ","
let maplocalleader = ","

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
