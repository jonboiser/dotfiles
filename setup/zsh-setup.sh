#!/bin/sh

# install zsh
brew install zsh

# change default shell
sudo chsh -s /usr/local/bin/zsh

# install antigen
brew install antigen

# install pure prompt
nvm use stable
npm i -g pure-prompt

# other stuff
brew install fzf
/usr/local/opt/fzf/install

brew install fasd
brew install tree
npm i -g trash-cli
npm i -g tldr

# install rcm and symlink .zshrc
brew install rcm
rcup zshrc

zsh ~/.zshrc
