" @robermitchellv

" -->GENERAL
" ////////////////////

set history=700             " how many lines of history VIM remembers

" -->COLORS
" ////////////////////

colorscheme badwolf		    " VIM color template
syntax enable			    " enable syntax processing
set background=dark         " baground is dark
set term=xterm-256color     " Ensure terminal is not stuck with 4 colors

" -->SPACES + TABS
" ////////////////////

set tabstop=4			    " number of visual spaces per TAB
set softtabstop=4		    " number of spaces in tab when editing
set expandtab			    " TABs = spaces

" -->UI CONFIG
" ////////////////////

set number			        " show line numbers
set showcmd			        " show command in bottom bar
set cursorline			    " highlight current line
filetype indent on		    " turns on filetype detection; loads indent
set wildmenu			    " visual autocomplete for command menu

" -->SEARCHING
" ////////////////////

set incsearch			    " search as characters are entered
set hlsearch			    " highlight matches 
