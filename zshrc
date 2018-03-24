export LANG=ja_JP.UTF-8

# The following lines were added by compinstall

zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/Users/hikaru/.zshrc'
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# Prompt
autoload -U promptinit
promptinit
prompt fire red magenta blue white white white
# Zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zaw"
zplug load --verbose
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

export PATH=$(brew --prefix openssl)/bin:$PATH
export XDG_CONFIG="$HOME/.config"
# stack
export PATH="$HOME/.local/bin:$PATH"
# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# python
export PATH="$HOME/Library/Python/3.6/bin:$PATH"

# added by travis gem
[ -f /Users/hikaru/.travis/travis.sh ] && source /Users/hikaru/.travis/travis.sh
export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"