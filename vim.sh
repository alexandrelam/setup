#!/bin/bash

#install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#install gruvbox theme
git clone https://github.com/morhetz/gruvbox

sudo cp -r gruvbox/colors ${HOME}/.vim

vim +'PlugInstall --sync' +qa
vim +'CocInstall coc-python coc-tsserver coc-json coc-html coc-css coc-java' +qa