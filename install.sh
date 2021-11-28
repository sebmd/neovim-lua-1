#!/usr/bin/env bash

# pełna ścieżka oraz nazwa pliku
SKRYPT="$PWD/$(basename $0)"
# nazwa pliku
PLIK=${SKRYPT##*/}
# katalog skryptu
KATALOG=${SKRYPT%$PLIK}

git clone https://github.com/hattori-hanz0/neovim-lua ~/.local/share/

ln -sf ~/.local/share/neovim-lua/.config/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/.local/share/neovim-lua/.config/vars ~/.config/vars
ln -sf ~/.local/share/neovim-lua/README.md ~/.config/nvim/README.md

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

