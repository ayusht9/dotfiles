export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

ZSH_THEME=""

ENABLE_CORRECTION="true"

PS1="%n@%m %~ %# "

setopt autocd
setopt appendhistory

# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

source $ZSH/oh-my-zsh.sh
