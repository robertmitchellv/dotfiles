# --> Basics
setopt no_beep                  # don't beep on error
setopt interactive_comments     # allow comments in interactive shell

# --> Directories
setopt auto_cd                  # if type directory without 'cd' go there

# --> Completion
setopt always_to_end

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="muse"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

INTERACTIVECOMMENTS="true"

export PATH="/home/robertmitchellv/Apps/Anaconda3/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"

# change amount of colors in terminal to 256
export TERM=xterm-256color

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias cd..='cd ..'
alias lsa='ls -al'
