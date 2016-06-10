#!/bin/bash
# Brew script for essential software only
# See other brew-*.sh scripts for optional software.

brew update
brew upgrade --all

# UNIX stuff
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

brew install nvm
brew install the-silver-searcher
