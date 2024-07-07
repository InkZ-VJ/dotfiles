#!/bin/bash

DOTFILES_DIR=~/dotfiles

ln -sf $DOTFILES_DIR/.zshrc ~/.zshrc
ln -sf $DOTFILES_DIR/.tmux.conf ~/.tmux.conf

ln -sf $DOTFILES_DIR/nvim ~/.config/nvim
ln -sf $DOTFILES_DIR/kitty ~/.config/kitty
ln -sf $DOTFILES_DIR/fish ~/.config/fish
ln -sf $DOTFILES_DIR/alacritty ~/.config/alacritty
ln -sf $DOTFILES_DIR/ohmyposh ~/.config/ohmyposh
