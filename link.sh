#!/bin/sh

ln -snf ~/dotfiles/.Brewfile ~/.Brewfile
ln -snf ~/dotfiles/.zshrc ~/.zshrc
mkdir -p ~/.config
ln -snf ~/dotfiles/.config/karabiner ~/.config/karabiner
mkdir -p ~/Library/Application\ Support/Code
ln -snf ~/dotfiles/Library/Application\ Support/Code/User ~/Library/Application\ Support/Code/User
