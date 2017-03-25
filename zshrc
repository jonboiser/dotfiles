#!/bin/zsh
export HISTFILE=$HOME/.histfile
export HISTSIZE=32768;
export SAVEHIST=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# more history options
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

export TERM=xterm-256color

# antigen
source $(brew --prefix)/share/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle brew
antigen bundle extract
antigen bundle git
antigen bundle npm
antigen bundle osx

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle Vifon/deer
# antigen bundle valiev/almostontop
antigen bundle djui/alias-tips
antigen apply

# iterm profile must map left-options to +Esc
# deer
# autoload -U deer
# zle -N deer
# bindkey '\ek' deer

# pure prompt
autoload -U promptinit && promptinit
PURE_PROMPT_SYMBOL="➜"
prompt pure

# PATH
export KEYTIMEOUT=1

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
# source ~/.zsh/aliases
# source ~/.zsh/functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
