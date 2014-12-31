" @robermitchellv

" -->VUNDLE
" ////////////////////

set nocompatible                " no vi backwards compatability; required
filetype off                    " required; seems like vundle's <open> tag
set rtp+=~/dotfiles/vim/bundle/Vundle.vim/
call vundle#rc()

" -->PLUGINS
" ////////////////////

Plugin 'gmarik/vundle.vim'
Plugin 'scrooloose/nerdtree'    " F2 to turn on (mapped below)
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'nvie/vim-flake8'        " press F7 to run flake8 on a python file
Plugin 'altercation/vim-colors-solarized' " colorscheme
Plugin 'davidhalter/jedi-vim'

filetype indent on		        " turns on filetype detection; loads indent
                                " --> also acts like vundle's </close> tag
" Brief Help
"  :PluginList          -   lists configuration plugins
"  :PluginInstall       -   installs plugins; append '!' to update or
"  :PluginUpdate
"  :PluginSearch foo    -   searches for foo; append '!' to refresh local cache
"  :PluginClean         -   confirms removal of unused plugins; append '!' to
"                            auto approve removal

" see :h vundle for more details


" NON PLUGIN RELATED BELOW
" ++++++++++++++++++++++++++++++++++++++++ 

" -->GENERAL
" ////////////////////

set history=700             " how many lines of history VIM remembers
set textwidth=79            " lines longer than 79 chars will be broken
set encoding=utf-8          " use utf-8
set modelines=0             " prevents some security exploits

" -->COLORS + FONTS
" ////////////////////

syntax on   			    " enable syntax processing
let g:solarized_termcolors=256 " enable degraded color mode
set t_Co=256                " trying to fix solarized color issues in term
set background=dark         " baground is dark
colorscheme solarized  		" VIM color template
set guifont=PowerlineSymbols\ 9
set laststatus=2

" -->SPACES + TABS + LINES
" ////////////////////

set tabstop=4			    " number of visual spaces per TAB
set softtabstop=4		    " number of spaces in tab when editing
set expandtab			    " TABs = spaces
set colorcolumn=80

" -->UI CONFIG
" ////////////////////

set number			        " show line numbers
set showcmd			        " show command in bottom bar
set cursorline			    " highlight current line
set wildmenu			    " visual autocomplete for command menu

" -->SEARCHING
" ////////////////////

set incsearch			    " search as characters are entered
set hlsearch			    " highlight matches

" -->KEY BINDINGS
" ////////////////////

map <F2> :NERDTreeToggle<CR>

