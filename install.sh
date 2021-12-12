#!/usr/bin/env bash

# INFO: Skrypt instalacyjny

# pełna ścieżka oraz nazwa pliku
SKRYPT="$PWD/$(basename $0)"
# nazwa pliku
PLIK=${SKRYPT##*/}
# katalog skryptu
KATALOG=${SKRYPT%$PLIK}

DATA=$(date +%F-%T|tr : -)

NEOVIM_LUA_DIR=$HOME/.local/share/neovim-lua

mkdir -p $HOME/bin
mkdir -p $HOME/Notes
mkdir -p $HOME/.config/nvim

cat <<EOF >> $HOME/.bashrc
[ -f "$HOME/.config/vars" ] && . "$HOME/.config/vars"
EOF

git clone --depth 1 https://github.com/hattori-hanz0/neovim-lua \
    $NEOVIM_LUA_DIR

git clone --depth 1 https://github.com/sainnhe/everforest \
    $HOME/.local/share/nvim/site/pack/packer/start/everforest

git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim


if [ ! -f $HOME/.config/nvim/init.lua ]; then
    ln -sf $NEOVIM_LUA_DIR/.config/nvim/init.lua ~/.config/nvim/init.lua
else
    echo "Plik ~/.config/nvim/init.lua już istnieje."
    cp ~/.config/nvim/init.lua ~/.config/nvim/init-$DATA.lua
    echo "Skopiowałem obecną konfigurację Neovim (init.lua) do pliku ~/.config/nvim/init-$DATA.lua"
fi

ln -sf $NEOVIM_LUA_DIR/.config/nvim/lua ~/.config/nvim/lua
ln -sf $NEOVIM_LUA_DIR/README.md ~/.config/nvim/README.md
ln -sf $NEOVIM_LUA_DIR/cheatsheet.txt ~/.config/nvim/cheatsheet.txt
ln -sf $NEOVIM_LUA_DIR/docs ~/.config/nvim/docs

if [ ! -f $HOME/.config/vars ]; then
    ln -sf $NEOVIM_LUA_DIR/.config/vars ~/.config/vars
else
    echo "Plik $HOME/.config/vars już istnieje.
    cp ~/.config/vars ~/.config/vars-$DATA
    echo "Skopiowałem obecną konfigurację do pliku ~/.config/vars-$DATA"
fi

ln -sf $NEOVIM_LUA_DIR/bin/gp.sh ~/bin/gp.sh
ln -sf $NEOVIM_LUA_DIR/bin/ga.sh ~/bin/ga.sh

nvim -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

nvim
