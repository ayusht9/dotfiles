export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

ZSH_THEME=""

ENABLE_CORRECTION="true"

# prompt

autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '(%b)'
precmd() { vcs_info }

BOLD='%B'
RESET='%b'

PROMPT="${BOLD}%n@%m %~${vcs_info_msg_0_}%# ${RESET}"
RPROMPT='%D{%Y-%m-%d %I:%M:%S %p}'

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
