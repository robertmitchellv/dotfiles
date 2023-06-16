# dotfiles Readme

this is my simple new Mac setup repo

### 1. XCode cli tools + Rosetta

#### XCode

make sure you have the XCode cli tools installed; check by launching the terminal and typing `gcc`--if no cli tools exist, the system will prompt you to install

you may also be prompted to agree to the cli tool terms, which is another option when you enter `gcc` (beyond it running, of course)

also, you can do this manually:

```{bash}
xcode-select --install
```

#### Rosetta

this is needed for furnning some things on apple arm chips

```{bash}
softwareupdate --install-rosetta
```

### 2. clone the repo

```{bash}
git clone https://github.com/robertmitchellv/dotfiles.git $HOME/dotfiles
```

### 3. homebrew

install `homebrew` (check the [site](https://brew.sh/) to be sure the command below is correct, do _not_ blindly copy/paste into the terminal)

```{bash}
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

next update `homebrew`

```{bash}
brew update && brew upgrade
```

the `Brewfile` contains the `homebrew` installs that seem best for my workflow more and more i'm trying to make this simple with less installs

```{bash}
cd ~/dotfiles/
brew bundle
```

### 4. create directories

the `create-structure.sh` script creates the code directories with a few repos i'll need

```{bash}
chmod +x create-structure.sh
./create-structure.sh
```

### 5. symlink all the files

```{bash}
ln -s $HOME/dotfiles/starship.toml $HOME/.config/starship.toml
ln -s $HOME/dotfiles/wezterm $HOME/.wezterm.lua
ln -s $HOME/dotfiles/zsh_plugins $HOME/.zsh_plugins.txt
ln -s $HOME/dotfiles/aliases $HOME/.aliases
ln -s $HOME/dotfiles/functions $HOME/.functions
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
```

