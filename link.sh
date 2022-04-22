#!/bin/bash

rm ~/.vimrc
rm ~/.tmux.conf
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -s $(pwd)/.vimrc ~/.vimrc
