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
"nmap <C-j> <C-W>j
"nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

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

" Colours
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Omnicompletion
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

" Clojure customisations
autocmd Filetype clojure map <LocalLeader>j [<C-D>                  
autocmd Filetype clojure map <LocalLeader>a :%Eval<CR>
autocmd Filetype clojure map <LocalLeader>e :Eval (clojure.repl/pst *e)<CR>
autocmd Filetype clojure map <LocalLeader>s :Eval (stop)<CR>

" Two spaces for indent in Clojure.
autocmd Filetype clojure setlocal ts=2 sw=2

" Slamhound
autocmd Filetype clojure map <LocalLeader>sh :Slamhound<CR>

" Visually indicate when we're in insert mode.
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" No tabs!
set tabstop=4
set shiftwidth=4
set expandtab

" Nerd tree
nmap <LocalLeader>nt :NERDTreeToggle<CR>
nmap <LocalLeader>f :NERDTreeFind<CR>

" Bubble
nmap <C-K> [e
nmap <C-J> ]e
vmap <C-K> [egv
vmap <C-J> ]egv

" Taglist
let tlist_clojure_settings = 'lisp;f:function'
map <LocalLeader>tl :TlistToggle<CR>

set number
set relativenumber

" Surround
nmap <LocalLeader>w" ysiw"
nmap <LocalLeader>w' ysiw'
