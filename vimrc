" @robermitchellv

" -->VUNDLE SET UP
" ////////////////////

set nocompatible                
" Required! No vi backwards compatability

filetype off                    
" Required! seems like vundle's <open> tag

set rtp+=~/Dotfiles/vim/bundle/Vundle.vim/
call vundle#begin()             " Required!


" ============================VUNDLE PLUGINS START============================ 


Plugin 'airblade/vim-gitgutter'  " shows a git diff in the gutter
Plugin 'bling/vim-airline'       " lean + mean status/tabline for vim
Plugin 'chrisbra/csv.vim'        " filetype plugin for csv
"Plugin 'davidhalter/jedi-vim'    " Python autocomplete
Plugin 'docunext/closetag.vim'   " ctrl + _ = searches for html/xml closing tag
Plugin 'gmarik/Vundle.vim'       " Required! Vundle manages Vundle
Plugin 'godlygeek/csapprox'      " enable gVim colorschemes to work in terminal
"Plugin 'guns/vim-clojure-static' " Necessary to use clojure repl in vim
"Plugin 'kien/ctrlp.vim'          " fuzzy file, buffer, etc finder
"Plugin 'nvie/vim-flake8'         " press F7 to run flake8 on a python file
Plugin 'majutsushi/tagbar'       " displays tags in window ordered by scope
Plugin 'powerline/powerline'     " use powerline fonts for airline
Plugin 'Raimondi/delimitMate'    " Add closing quotes, parens, + brackets
"Plugin 'scrooloose/syntastic'    " linting in any language
Plugin 'scrooloose/nerdtree'     " F2 to turn on (mapped below)
"Plugin 'Shougo/unite.vim'        " search and display info from files + buffers
Plugin 'sjl/badwolf'             " Badwolf color scheme
Plugin 'tomasr/molokai'          " Molokai color scheme
Plugin 'tpope/vim-fugitive'      " Git wrapper
Plugin 'tpope/vim-surround'      " Help with brackets and the like
"Plugin 'tpope/vim-fireplace'     " REPL for Clojure
"Plugin 'tpope/vim-leiningen'     " Static Vim support for Leiningen
"Plugin 'tpope/vim-classpath'     " Sets path for JVM to current project
Plugin 'twbs/bootlint'           " HTML linter for bootstrap projects


call vundle#end()                " Required!
filetype plugin indent on        " --> also acts like vundle's </close> tag
                                 " Requiered!
" Vundle Help
"  :PluginList          -   lists configuration plugins
"  :PluginInstall       -   installs plugins; append '!' to update or
"  :PluginUpdate
"  :PluginSearch foo    -   searches for foo; append '!' to refresh local cache
"  :PluginClean         -   confirms removal of unused plugins; append '!' to
"                            auto approve removal

" see :h vundle for more details


" =============================VUNDLE PLUGINS END============================= 
  

" -->GENERAL SETTINGS
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
colorscheme badwolf         " VIM color template
let g:badwolf_darkgutter = 1
" make the gutters darker than the background
set laststatus=2
let g:airline_powerline_fonts = 1
" automatically populate airline with powerline symbols


" -->SPACES + TABS + LINES
" ////////////////////

set expandtab			    " TABs = spaces
set tabstop=4			    " number of visual spaces per TAB
set softtabstop=4		    " number of spaces in tab when editing
set shiftwidth=2            " control how many columns text indents
set colorcolumn=80
autocmd FileType html setlocal shiftwidth=2 tabstop=2
" html specific space and tab settings

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


