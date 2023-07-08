# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="geoffgarside"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
# golang

# pnpm
export PNPM_HOME="/home/ugur/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# docker
alias tinygo='docker run --rm -v "$(pwd):/src" -w /src tinygo/tinygo:0.27.0 tinygo'
alias ffmpeg='docker run --rm -v "$(pwd):/config" linuxserver/ffmpeg'
alias rust='docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp rust:1.23.0'
# docker end