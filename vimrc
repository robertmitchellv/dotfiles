" @robermitchellv

" -->VUNDLE
" ////////////////////

set nocompatible                
" no vi backwards compatability; required

filetype off                    
" required; seems like vundle's <open> tag

set rtp+=~/dotfiles/vim/bundle/Vundle.vim/
call vundle#begin()

" -->PLUGINS
" ////////////////////

Plugin 'gmarik/Vundle.vim'      " plugin for Vundle
Plugin 'scrooloose/syntastic'   " linting in any language
Plugin 'scrooloose/nerdtree'    " F2 to turn on (mapped below)
Plugin 'tpope/vim-fugitive'     " Git wrapper
Plugin 'bling/vim-airline'      " lean + mean status/tabline for vim
Plugin 'nvie/vim-flake8'        " press F7 to run flake8 on a python file
Plugin 'tpope/vim-surround'     " Help with brackets and the like
Plugin 'davidhalter/jedi-vim'   " Python autocomplete
Plugin 'Raimondi/delimitMate'   " Add closing quotes, parens, + brackets
Plugin 'docunext/closetag.vim'  " ctrl + _ = searches for html/xml closing tag
Plugin 'godlygeek/csapprox'     " enable gVim colorschemes to work in terminal
Plugin 'kien/ctrlp.vim'         " fuzzy file, buffer, etc finder
Plugin 'Shougo/unite.vim'       " search and display info from files + buffers
Plugin 'majutsushi/tagbar'      " displays tags in window ordered by scope
Plugin 'chrisbra/csv.vim'       " filetype plugin for csv
Plugin 'airblade/vim-gitgutter' " shows a git diff in the gutter
Plugin 'powerline/powerline'    " use powerline fonts for airline
Plugin 'jmcantrell/vim-virtualenv'
" work with python virtualenvs in vim
Plugin 'CruizeMissile/Revolution.vim'
" dark colorscheme
Plugin 'altercation/vim-colors-solarized'
" solarized colorscheme

call vundle#end()
filetype plugin indent on       " --> also acts like vundle's </close> tag

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
let g:syntastic_check_on_open=1
" live linting

" -->COLORS + FONTS
" ////////////////////

syntax enable   		    " enable syntax processing
set t_Co=256                " ensure 256 colors
colorscheme Revolution      " VIM color template
set laststatus=2
let g:airline_powerline_fonts = 1
" automatically populate airline with powerline symbols

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

