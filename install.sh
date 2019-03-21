#!/bin/bash
git clone --depth=1 https://github.com/nrjais/vimrc.git ~/.vim_runtime
cp ~/.vim_runtime/vimrc ~/.vimrc
cp -r ~/.vim_runtime/pack ~/.vim/
