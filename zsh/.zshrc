#!/bin/zsh
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  extract
  fasd
  git
  npm
  osx
)

source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_HIGHLIGHTER=S(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# User configuration
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$HOME/.local/bin
export KEYTIMEOUT=1

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh || nvm use --delete-prefix stable

# fzf
export FZF_DEFAULT_COMMAND='ag -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# opam
source $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# stack and cabal
export PATH=$PATH:$HOME/.stack/programs/x86_64-osx/ghc-7.8.4/bin
export PATH=$PATH:$HOME/.cabal/bin

# fasd
eval "$(fasd --init auto)"
alias v="f -e vim"
alias aa="f -e atom"

# other aliases
source ~/.aliases

# antigen
source $(brew --prefix)/share/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle Vifon/deer deer
antigen bundle valiev/almostontop
antigen apply

# deer
zle -N deer
bindkey '\ek' deer

# pure prompt
autoload -U promptinit && promptinit
PURE_PROMPT_SYMBOL="➜"
prompt pure
