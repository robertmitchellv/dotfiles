# @robertmitchellv
#
#  ___________
# <  .zshrc   >
#  -----------
#         \   ^__^
#          \  (oo)\_______
#             (__)\       )\/\
#                 ||----w |
#                 ||     ||

#
# oh-my-zsh generated settings:
#

# if you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# path to your oh-my-zsh installation.
export ZSH=/Users/rbmv/.oh-my-zsh

# set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# see https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# change the command execution time stamp shown in the history command output.
# the optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# don't be a moster; use the proper date format
HIST_STAMPS="yyyy-mm-dd"

# would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# example format: plugins=(rails git textmate ruby lighthouse)
# add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# 
# rbmv settings
#

#
# functions
#

clam(){clamscan -r --bell -i $1}
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
rows(){wc -l $1}

installed() {brew list | grep -i "$1"}
bin-local() {lsa /usr/local/bin | grep -i "$1"}
font-installed() {printf "%s\n" ~/Library/Fonts/* /Library/Fonts/* | awk -F/ '{print $NF}' | grep -i "$1"}

#
# path variables
#

export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"    
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/gdal2/bin:$PATH"

#
# compilation flags
#

export ARCHFLAGS="-arch x86_64"
export LDFLAGS="-L/usr/local/opt/libpq/lib"
export CPPFLAGS="-I/usr/local/opt/libpq/include"
export PKG_CONFIG_PATH="/usr/local/opt/libpq/lib/pkgconfig"
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LDFLAGS="-L/usr/local/opt/v8@3.15/lib"
export CPPFLAGS="-I/usr/local/opt/v8@3.15/include"
export EDITOR='vim'
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"
export GDAL_DRIVER_PATH="/usr/local/lib/gdalplugins"
export LDFLAGS="-L/usr/local/opt/gdal2/lib"
export CPPFLAGS="-I/usr/local/opt/gdal2/include"
export PKG_CONFIG_PATH="/usr/local/opt/gdal2/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/libkml-dev/lib"
export CPPFLAGS="-I/usr/local/opt/libkml-dev/include"

#
# personal aliases 
#

alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"
alias cd..="cd ../"
alias c="clear"
alias update="brew update && brew upgrade && brew cleanup && brew cask cleanup && brew cask upgrade && brew cask cleanup"
alias git="hub"
alias fonts="printf "%s\n" ~/Library/Fonts/* /Library/Fonts/* | awk -F/ '{print $NF}'"

