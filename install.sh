#!/bin/bash


ln -s ${PWD}/vimrc ${HOME}/.vimrc

mkdir -p ${HOME}/.config/nvim
ln -s ${PWD}/init.vim ${HOME}/.config/nvim/init.vim

ln -s ${PWD}/zshrc ${HOME}/.zshrc




