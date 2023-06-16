#!/usr/bin/env zsh

# make it verbose
set -x

# </> create code directories
mkdir -p $HOME/code/{personal, professional, work}
mkdir -p $HOME/code/work/{skylight, dph, dhs, srht}

# --> clone some repos
gh repo clone robertmitchellv/robertmitchellv.github.io $HOME/code/professional/
gh repo clone robertmitchellv/talks $HOME/code/professional/
gh repo clone CDCgov/phdi $HOME/code/work/skylight/
gh repo clone CDCgov/phdi-azure $HOME/code/work/skylight/
gh repo clone CDCgov/phdi-site $HOME/code/work/skylight/

