#!/bin/bash

if [[ ! -x $(/usr/bin/which -s brew) ]]; then
  echo "Homebrew is not found, try to install"
  /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

brew update

brew install coreutils

echo "Essential libraries (openssl,readline)"
brew install openssl readline
brew link openssl
brew link readline

echo "Heavy duty tools"
brew install --disable-etcdir zsh
brew install tig tmux ctags
brew install reattach-to-user-namespace

echo "rbenv and ruby-build"
brew install rbenv ruby-build

echo "Install haskell"
brew install haskell-platform

echo "Install Node.js"
brew install node

echo "Web tools"
brew install curl w3m
brew install wget --enable-iri

echo "Other tools"
brew install keychain ssh-copy-id coreutils htop-osx

brew install nkf

