" @robermitchellv

" -->VUNDLE SET UP
" ////////////////////

" Required! No vi backwards compatability
set nocompatible                

" Required! seems like vundle's <open> tag
filetype off                    

set rtp+=~/Dotfiles/vim/bundle/Vundle.vim/
call vundle#begin()             " Required!

" ============================VUNDLE PLUGINS START============================ 

Plugin 'airblade/vim-gitgutter'  " shows a git diff in the gutter
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'       " lean + mean status/tabline for vim
Plugin 'scrooloose/nerdtree'     " F2 to turn on (mapped below)
Plugin 'scrooloose/syntastic'    " linting in any language
Plugin 'chrisbra/csv.vim'        " filetype plugin for csv
Plugin 'davidhalter/jedi-vim'    " Python autocomplete
Plugin 'godlygeek/csapprox'      " enable gVim colorschemes to work in terminal
Plugin 'powerline/powerline'     " use powerline fonts for airline
Plugin 'tmux-plugins/vim-tmux'   " Multi screen!
Plugin 'tpope/vim-fugitive'      " Git wrapper
Plugin 'tpope/vim-surround'      " Help with brackets and the like
Plugin 'vim-scripts/Vim-R-plugin'" R plugin for Vim
Plugin 'VundleVim/Vundle.vim'    " Required! Vundle manages Vundle

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
" live linting
let g:syntastic_check_on_open=1

" -->COLORS + FONTS
" ////////////////////

syntax enable   		    " enable syntax processing
set t_Co=256                " ensure 256 colors
set background=dark         " add 'light' to switch theme
let g:solarized_termtrans=1
let g:solarized_termcolors=256
" Match the t_Co=256
colorscheme solarized       " Color theme (downloaded from Vundle)
set laststatus=2
" automatically populate airline with powerline symbols
let g:airline_powerline_fonts = 1

" -->SPACES + TABS + LINES
" ////////////////////

set expandtab			    " TABs = spaces
set tabstop=4			    " number of visual spaces per TAB
set softtabstop=4		    " number of spaces in tab when editing
set shiftwidth=2            " control how many columns text indents
set colorcolumn=80          " controls the bar to the right------------------>
" html specific space and tab settings
autocmd FileType html setlocal shiftwidth=2 tabstop=2

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

" -->R Settings
" ////////////////////
let maplocalleader = ","
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
let vimrplugin_applescript=0
let vimrplugin_vsplit=1

" -->KEY BINDINGS
" ////////////////////

map <F2> :NERDTreeToggle<CR>
