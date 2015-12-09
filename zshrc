# --> PATHs 
# ////////////////////////////////////////

# ZSH To your oh-my-zsh installation.
export ZSH=/Users/robertmitchellv/.oh-my-zsh

# MacPorts Installer addition on 2015-12-05_at_20:32:36: adding an appropriate 
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# added by Anaconda3 2.4.0 installer
export PATH="/Users/robertmitchellv/anaconda/bin:$PATH"

# --> BASICS
# ////////////////////////////////////////
setopt no_beep                  # don't beep on error
setopt interactive_comments     # allow comments in interactive shell

# --> Directories
setopt auto_cd                  # if type directory without 'cd' go there

# --> Completion
setopt always_to_end

# --> Plugins
plugins=(docker git lein macports osx vim-interaction xcode)

# --> KEYBINDINGS + ALIASES
# ////////////////////////////////////////

alias cd..='cd ..'
alias c='clear'
alias lsa='ls -al'
alias pc="sudo port clean --all installed"
alias psu="sudo port selfupdate"
alias puni="sudo port uninstall inactive"
alias puo="sudo port upgrade outdated"
alias pup="psu && puo"

# --> oh-my-zsh theme
ZSH_THEME="agnoster"

# --> folder colors
# export CLICOLOR=1

# --> Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
INTERACTIVECOMMENTS="true"

# --> Configuration
source $ZSH/oh-my-zsh.sh

# --> You may need to manually set your language environment
export LANG=en_US.UTF-8
