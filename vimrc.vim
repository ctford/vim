" This is standard pathogen and vim setup.
set nocompatible
call pathogen#infect() 
syntax on
filetype plugin indent on

" Here's the vimclojure stuff.
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"

" Avoid the leader pinky-stretch.
let mapleader = ","
let maplocalleader = ","

" Paredit
let g:paredit_mode = 1

" Light colourscheme
" colors mayansmoke

" Use cursorline to indicate when we're in insert mode.
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" No tabs!
set tabstop=4
set shiftwidth=4
set expandtab

" Two spaces for indent in Clojure.
autocmd Filetype clojure setlocal ts=2 sw=2

map :nt<CR> :NERDTreeToggle<CR>
