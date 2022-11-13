#!/bin/bash

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
rm ~/.vimrc || true
rm ~/.tmux.conf || true
rm ~/.config/nvim/init.* || true
rm ~/.zshrc || true
ln -s $(pwd)/tmux.conf ~/.tmux.conf
mkdir -p ~/.config/nvim/
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/init.lua ~/.config/nvim/init.lua
ln -s $(pwd)/zshrc ~/.zshrc
