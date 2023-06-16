#!/usr/bin/env zsh

# make it verbose
set -x

# </> create temp for home
mkdir $HOME/tmp

# </> set up .config
mkdir $HOME/.config

# </> create code directories
mkdir -p $HOME/code/{personal,professional,work}
mkdir -p $HOME/code/work/{skylight,dph,dhs,srht}

# --> clone some repos
gh repo clone robertmitchellv/robertmitchellv.github.io $HOME/code/professional/robertmitchellv.github.io
gh repo clone robertmitchellv/talks $HOME/code/professional/talks
gh repo clone CDCgov/phdi $HOME/code/work/skylight/phdi
gh repo clone CDCgov/phdi-azure $HOME/code/work/skylight/phdi-azure
gh repo clone CDCgov/phdi-site $HOME/code/work/skylight/phdi-site
