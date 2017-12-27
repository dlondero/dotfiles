#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Link bash profile
[[ ! -s ~/.bash_profile ]] && ln -s ~/.dotfiles/.bash_profile ~/.bash_profile && source ~/.bash_profile
[[ ! -s ~/.bashrc ]] && ln -s ~/.dotfiles/.bashrc ~/.bashrc && source ~/.bashrc

# Git ignore global
[[ ! -s ~/.gitignore_global ]] && ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Set macOS preferences
source .macos
