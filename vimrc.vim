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
let g:paredit_mode = 0
