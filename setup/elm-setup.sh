#!/bin/bash
brew install elm-platform

nvm use stable
npm install -g elm-oracle

apm install elm-format
apm install language-elm
apm install linter-elm-make
