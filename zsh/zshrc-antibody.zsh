autoload -Uz compinit 

if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

export HISTFILE=$HOME/.histfile
export HISTSIZE=32768;
export SAVEHIST=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:la:1:ll:cd:cd -:pwd:exit:date:* --help";
export TERM=xterm-256color

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

export PURE_PROMPT_SYMBOL="➜"
export FZF_DEFAULT_COMMAND='ag -g ""'
export ANTIBODY_HOME=~/Library/antibody

eval "$(fasd --init auto)"

alias abb="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh && source ~/.zsh_plugins.sh"

function zvm_after_init() {
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
  source /usr/local/opt/asdf/asdf.sh
}

source ~/.zsh_plugins.sh
