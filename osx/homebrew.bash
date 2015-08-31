#!/bin/bash

if [[ ! -x $(/usr/bin/which -s brew) ]]; then
  echo "Homebrew is not found, try to install"
  /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

echo "Web tools"
brew install curl w3m
brew install wget --enable-iri

echo "ImageMagick"
brew install libjpeg
brew install libtool --universal
brew install jpeg
brew install imagemagick --with-libtiff

echo "Other tools"
brew install keychain ssh-copy-id coreutils htop-osx

brew install nkf

echo "Cask"
brew install caskroom/cask/brew-cask
brew cask install iterm2
brew cask install pusher
brew cask install imageoptim
brew cask install coteditor
