# </> zsh config

# ==> transient prompt
#     --> similar to p10k and warp
      print ${(pl:$LINES::\n:):-}

# ==> welcome message
echo ""
echo "            "
echo " HOME sweet HOME "


# ==> antidote
#     --> https://github.com/mattmc3/antidote
      source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

#     --> initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
      antidote load

# ==> aliases and functions
      source "$HOME/.aliases"
      source "$HOME/.functions"

# ==> options
#     --> locale
      export LC_ALL=en_US.UTF-8
      export LANG=en_US.UTF-8
      export LANGUAGE=en_US.UTF-8

#     --> do not override files using `>`, but it's still possible using `>!`
      set -o noclobber

# ==> cli tools
#     --> curl
      export PATH="/usr/local/opt/curl/bin:$PATH"
#     |> compilers
      export LDFLAGS="-L/usr/local/opt/curl/lib"
      export CPPFLAGS="-I/usr/local/opt/curl/include"
#     |> pkconfig
      export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"

#     --> atuin history db
#     $ atuin gen-completions --shell zsh --out-dir $HOME
      eval "$(atuin init zsh)"

#     --> conda
#     |> start
      __conda_setup="$('/opt/homebrew/Caskroom/mambaforge/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
      if [ $? -eq 0 ]; then
          eval "$__conda_setup"
      else
          if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh" ]; then
              . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh"
          else
              export PATH="/opt/homebrew/Caskroom/mambaforge/base/bin:$PATH"
          fi
      fi
      unset __conda_setup

      if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/mamba.sh" ]; then
          . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/mamba.sh"
      fi     
#     |> end

# ==> programming langs 
#     --> rust
      source "$HOME/.cargo/env"

#     --> java
#      export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk17/Contents/Home

# </> blast off starship
#     --> remember to use custom starship.toml
      eval "$(starship init zsh)"
