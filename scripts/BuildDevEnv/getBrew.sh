#!/bin/sh
echo "Installing brew package manager in your ${HOME} directory. No sudo needed 😀"
cd $HOME
mkdir $HOME/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C $HOME/homebrew &&

eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
echo 'export PATH="$HOME/homebrew/bin/:$PATH"' >> $HOME/.profile