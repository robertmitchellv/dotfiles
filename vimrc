" @robermitchellv

" -->VUNDLE
" ////////////////////

set nocompatible            " no vi backwards compatability; required
filetype off                " required; seems like vundle's <open> tag
set rtp+=~/dotfiles/vim/bundle/Vundle.vim/
call vundle#rc()

" -->PLUGINS
" ////////////////////

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

filetype indent on		    " turns on filetype detection; loads indent
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

" -->COLORS + FONTS
" ////////////////////

colorscheme badwolf		    " VIM color template
syntax enable			    " enable syntax processing
set background=dark         " baground is dark
set term=xterm-256color     " Ensure terminal is not stuck with 4 colors 
set guifont=Fedra\ Mono\ Std\ Light\ for\ Powerline\ 9
set laststatus=2

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
set wildmenu			    " visual autocomplete for command menu

" -->SEARCHING
" ////////////////////

set incsearch			    " search as characters are entered
set hlsearch			    " highlight matches
