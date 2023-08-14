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
plugins=(git docker heroku)

source $ZSH/oh-my-zsh.sh

# User configuration

function clone() {
  git clone "$1"
}

# golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
# golang

# pnpm
export PNPM_HOME="/home/ugur/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# docker
alias tinygo='docker run --rm -v "$(pwd):/src" -w /src tinygo/tinygo:0.27.0 tinygo'
alias ffmpeg='docker run --rm -v "$(pwd):/config" linuxserver/ffmpeg'
alias pack='docker run -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/workspace -w /workspace buildpacksio/pack:latest'
# docker end

# proxy
alias proxy_start='docker run -d --name tor -p 9050:9050 ugurkorkmaz/proxy:latest'
alias proxy_stop='docker stop tor && docker rm tor'
alias secure='chromium-browser --proxy-server="socks5://127.0.0.1:9050" --incognito'
# proxy end

# symfony 
export PATH="$HOME/.symfony5/bin:$PATH"
# symfony end

# tools
applications=("minikube" "kubectl" "helm" "k3d" "buf")

for app in "${applications[@]}"; do
    source <($app completion zsh)
done
# tools end
