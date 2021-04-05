#!/bin/sh

ln -snf ~/dotfiles/.zprofile ~/.zprofile
ln -snf ~/dotfiles/.zshrc ~/.zshrc
ln -snf ~/dotfiles/.Brewfile ~/.Brewfile
mkdir -p ~/.config
ln -snf ~/dotfiles/.config/fish ~/.config/fish
mkdir -p ~/.config
ln -snf ~/dotfiles/.config/karabiner ~/.config/karabiner
mkdir -p ~/Library/Application\ Support/Code
ln -snf ~/dotfiles/Library/Application\ Support/Code/User ~/Library/Application\ Support/Code/User
