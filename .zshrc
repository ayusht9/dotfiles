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

# aliases
alias icat="kitty +kitten icat"
alias lsh="ls -lhtr"

# theme switcher
# dark
alias dark='gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark \
&& gsettings set org.gnome.desktop.interface color-scheme prefer-dark'

# light
alias light='gsettings set org.gnome.desktop.interface gtk-theme Adwaita \
&& gsettings set org.gnome.desktop.interface color-scheme prefer-light'

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

