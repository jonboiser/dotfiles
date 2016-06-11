#!/bin/bash
# Brew script for tools

brew install dark-mode
brew install ranger

# emacs
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-cocoa --with-gnutls --with-librsvg --with-imagemagick --with-spacemacs-icon
brew linkapps

# install spacemacs
if [[ ! -d ~/.emacs.d ]]
then
  git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

brew cask install alfred
