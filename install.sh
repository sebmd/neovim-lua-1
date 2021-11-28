#!/usr/bin/env bash

# pełna ścieżka oraz nazwa pliku
SKRYPT="$PWD/$(basename $0)"
# nazwa pliku
PLIK=${SKRYPT##*/}
# katalog skryptu
KATALOG=${SKRYPT%$PLIK}

NEOVIM_LUA_DIR=$HOME/.local/share/neovim-lua

mkdir -p $HOME/bin
mkdir -p $HOME/Notes

git clone https://github.com/hattori-hanz0/neovim-lua $NEOVIM_LUA_DIR

ln -sf $NEOVIM_LUA_DIR/.config/nvim/init.lua ~/.config/nvim/init.lua
ln -sf $NEOVIM_LUA_DIR/.config/vars ~/.config/vars
ln -sf $NEOVIM_LUA_DIR/README.md ~/.config/nvim/README.md

ln -sf $NEOVIM_LUA_DIR/bin/gp.sh ~/bin/gp.sh
ln -sf $NEOVIM_LUA_DIR/bin/ga.sh ~/bin/ga.sh

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

nvim
