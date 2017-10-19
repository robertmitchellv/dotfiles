# --> PATHs 
# ////////////////////////////////////////

# ZSH To your oh-my-zsh installation.
export ZSH=/Users/robertmitchellv/.oh-my-zsh

# MacPorts Installer addition on 2015-12-05_at_20:32:36: adding an appropriate 
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Add pip installed python packages to path
# export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/3.5/bin:$PATH"
export PATH="/opt/local/bin/python:$PATH"

# --> You may need to manually set your language environment
export LANG=en_US.UTF-8

# --> Select directory to put r-packages
export R_LIBS="~/Code/R-libs"

# --> Set npm path
export PATH=~/.npm-global/bin:$PATH

# --> PostgreSQL
export PG_CONFIG="/opt/local/lib/postgresql96/bin/pg_config"

# --> BASICS
# ////////////////////////////////////////
# dont beep on error
setopt no_beep                  

# allow comments in interactive shell
setopt interactive_comments     

# --> Directories
# if type directory without 'cd' go there
setopt auto_cd                  

# --> Completion
setopt always_to_end

# --> Plugins
plugins=(docker git macports osx vim-interaction xcode)

# --> KEYBINDINGS + ALIASES
# ////////////////////////////////////////

alias cd..='cd ..'
alias c='clear'
alias lsa='ls -al'
alias clean="sudo port clean --all installed"
alias selfupdate="sudo port selfupdate"
alias inactive="sudo port uninstall inactive"
alias outdated="sudo port upgrade outdated"
alias update="selfupdate && outdated"
alias git="hub"
alias clamscan-root="clamscan -r --bell -i /"
alias clamscan-background="clamscan -r -i / &"
alias clamscan-home="clamscan -r --bell -i ~/"

# --> oh-my-zsh theme
ZSH_THEME="agnoster"

# --> folder colors
# export CLICOLOR=1

# --> Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
INTERACTIVECOMMENTS="true"

# --> Configuration
source $ZSH/oh-my-zsh.sh

