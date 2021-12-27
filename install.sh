#!/usr/bin/env bash

# INFO: Skrypt instalacyjny

# pełna ścieżka oraz nazwa pliku
SKRYPT="$PWD/$(basename $0)"
# nazwa pliku
PLIK=${SKRYPT##*/}
# katalog skryptu
KATALOG=${SKRYPT%$PLIK}

DATA=$(date +%F-%T|tr : -)

# Katalog konfiguracjia Neovim
NEOVIM_LUA_DIR=$HOME/.local/share/neovim-lua

# Tworzy katalogi
mkdir -p $HOME/bin
mkdir -p $HOME/Notes
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/lua

# Dodaje do pliku konfiguracji BASH wczytanie zmiennych z pliku ~/.config/vars
grep "\$HOME/.config/vars" ~/.bashrc > /dev/null
if [ $? == 1 ]; then
    echo "#" >> ~/.bashrc
    echo "# Wczytanie zmiennych z pliku ~/.config/vars" >> ~/.bashrc
    echo "[ -f \"\$HOME/.config/vars\" ] && . \"\$HOME/.config/vars\"" >> ~/.bashrc
fi

# Pobiera konfigurację Neovim
git clone --depth 1 https://github.com/hattori-hanz0/neovim-lua \
    $NEOVIM_LUA_DIR

# Pobiera schemat kolorów everforest
git clone --depth 1 https://github.com/sainnhe/everforest \
    $HOME/.local/share/nvim/site/pack/packer/start/everforest

# Pobiera menadżer pluginów packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Pobranie słownika języka polskiego
mkdir -p ~/.config/nvim/spell
curl http://ftp.vim.org/pub/vim/runtime/spell/pl.utf-8.spl -o ~/.config/nvim/spell/pl.utf-8.spl

# Tworzy link symboliczny pomiędzy pobranym repozytorium a plikiem ~/.config/nvim/init.lua
if [ ! -f $HOME/.config/nvim/init.lua ]; then
    ln -sf $NEOVIM_LUA_DIR/.config/nvim/init.lua ~/.config/nvim/init.lua
else
    echo "Plik ~/.config/nvim/init.lua już istnieje."
    cp ~/.config/nvim/init.lua ~/.config/nvim/init-$DATA.lua
    echo "Skopiowałem obecną konfigurację Neovim (init.lua) do pliku ~/.config/nvim/init-$DATA.lua"
fi

# Tworzy linki dodatkowe symboliczne
ln -sf $NEOVIM_LUA_DIR/.config/nvim/lua/funkcje.lua ~/.config/nvim/lua/funkcje.lua
ln -sf $NEOVIM_LUA_DIR/.config/nvim/lua/komendy.lua ~/.config/nvim/lua/komendy.lua
ln -sf $NEOVIM_LUA_DIR/.config/nvim/lua/mappings.lua ~/.config/nvim/lua/mappings.lua
ln -sf $NEOVIM_LUA_DIR/.config/nvim/lua/plugins.lua ~/.config/nvim/lua/plugins.lua
ln -sf $NEOVIM_LUA_DIR/.config/nvim/lua/settings.lua ~/.config/nvim/lua/settings.lua
ln -sf $NEOVIM_LUA_DIR/.config/nvim/lua/plugins/ ~/.config/nvim/lua/plugins
ln -sf $NEOVIM_LUA_DIR/docs/ ~/.config/nvim/docs
ln -sf $NEOVIM_LUA_DIR/README.md ~/.config/nvim/README.md
ln -sf $NEOVIM_LUA_DIR/.config/nvim/cheatsheet.txt ~/.config/nvim/cheatsheet.txt
ln -sf $NEOVIM_LUA_DIR/.config/nvim/kolory ~/.config/nvim/kolory

# Tworzy link symboliczny dla ~/.config/vars
if [ ! -f $HOME/.config/vars ]; then
    ln -sf $NEOVIM_LUA_DIR/.config/vars ~/.config/vars
else
    echo "Plik $HOME/.config/vars już istnieje."
    cp ~/.config/vars ~/.config/vars-$DATA
    echo "Skopiowałem obecną konfigurację do pliku ~/.config/vars-$DATA"
fi

# Tworzy linki symboliczne dla skryptów gp i ga
ln -sf $NEOVIM_LUA_DIR/bin/gp.sh ~/bin/gp.sh
ln -sf $NEOVIM_LUA_DIR/bin/ga.sh ~/bin/ga.sh

# Instaluje pluginy
nvim -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Włącza Neovim
nvim
