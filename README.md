# Dotfiles Readme

This is my simple new Mac setup repo

### 1. Clone the repo

```{bash}
cd ~/
git clone https://github.com/robertmitchellv/dotfiles.git
```

### 2. Create directories

The `create-structure.sh` script creates the directories I want to start using as a way to better organize my files.

```{bash}
cd ~/dotfiles/
chmod +x create-structure.sh
./create-structure.sh
```

### 3. X-Code cli tools

Make sure you have the X-Code cli tools installed; check by launching the terminal and typing `gcc`--if no cli tools exist, the system will prompt you to install.

You may also be prompted to agree to the cli tool terms, which is another option when you enter `gcc` (beyond it running, of course).

Also, you can do this manually:

```{bash}
xcode-select --install
```

### 4. Homebrew

Install `homebrew` (check the [site](https://brew.sh/) to be sure the command below is correct, do _not_ blindly copy/paste into the terminal)

```{bash}
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Next update `homebrew`

```{bash}
brew update && brew upgrade
```

The `Brewfile` contains the `homebrew` installs that seem best for my workflow and are a collection of ideas from:

* [Bob Rudis](https://rud.is/b/2015/10/22/installing-r-on-os-x-100-homebrew-edition/)
* Hadley Wickham's [Dockerfile](https://github.com/hadley/docker/blob/master/rdevel/Dockerfile)
* The `rocker/geospatial` [Dockerfile](https://hub.docker.com/r/rocker/geospatial/~/dockerfile/)
* [This](http://luisspuerto.net/2018/01/install-r-100-homebrew-edition-with-openblas-openmp-my-version/) blog post by Luis Puerto

To run:

```{bash}
cd ~/dotfiles/
brew bundle
```

### 5. Rprofile

Very minimal, it points to where I want to keep my R packages mostly

```{bash}
cd ~/dotfiles/
ln -s Rprofile ~/.Rprofile
```

### 6. R Packages

Open up R and install the packages:

```{bash}
cd ~/dotfiles/
R
```

Then in the R console enter:

```{r}
source("Packages.R")
install.packages(packages)
```

There are some additional packages that need to be installed with:

```{r}
remotes::install_github("username/package")
```


