#!/bin/bash

rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.config/nvim/init.*
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/init.lua ~/.config/nvim/init.lua
