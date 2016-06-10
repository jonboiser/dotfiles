#!/bin/zsh
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# antigen
source $(brew --prefix)/share/antigen.zsh
antigen use oh-my-zsh

antigen bundle brew
antigen bundle extract
antigen bundle git
antigen bundle npm
antigen bundle osx

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle Vifon/deer deer
# antigen bundle valiev/almostontop
antigen bundle djui/alias-tips
antigen apply

# deer
zle -N deer
bindkey '\ek' deer

# pure prompt
autoload -U promptinit && promptinit
PURE_PROMPT_SYMBOL="➜"
prompt pure

# PATH
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
#source ~/.aliases
