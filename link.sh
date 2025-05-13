#!/bin/bash

rm ~/.vimrc || true
rm ~/.tmux.conf || true
rm -rf ~/.config/nvim || true
rm -rf ~/.local/share/nvim || true
rm -rf ~/.config/helix || true
mkdir -p ~/.config/helix
rm ~/.zshrc || true
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/nvim ~/.config
ln -s $(pwd)/zshrc ~/.zshrc
ln -s $(pwd)/helix/config.toml ~/.config/helix/config.toml
