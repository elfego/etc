#!/bin/bash

ln -s ${PWD}/vimrc ${HOME}/.vimrc

mkdir -p ${HOME}/.config/nvim
ln -s ${PWD}/init.vim ${HOME}/.config/nvim/init.vim

sed 's@XXXX@'"$HOME"'@g' conda_init.template > conda_init.sh
ln -s ${PWD}/zshrc ${HOME}/.zshrc

ln -s ${PWD}/xinitrc ${HOME}/.xinitrc
ln -s ${PWD}/Xresources ${HOME}/.Xresources

