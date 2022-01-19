#!/usr/bin/env bash

# INFO: Skrypt instalacyjny

# pełna ścieżka oraz nazwa pliku
SKRYPT="$PWD/$(basename $0)"
# nazwa pliku
PLIK=${SKRYPT##*/}
# katalog skryptu
KATALOG=${SKRYPT%$PLIK}

DATA=$(date +%F-%T | tr : -)
DATABS=$(date +%F-%T | tr : - | tr -d -)

# Katalog konfiguracjia Neovim
NEOVIM_LUA_DIR=$HOME/.local/share/neovim-lua

# Tworzy katalogi
mkdir -p $HOME/bin
mkdir -p $HOME/Notes
mkdir -p $HOME/git

# Dodaje do pliku konfiguracji BASH wczytanie zmiennych z pliku ~/.config/vars
grep "\$HOME/.config/vars" ~/.bashrc >/dev/null
if [ $? == 1 ]; then
    echo "#" >>~/.bashrc
    echo "# Wczytanie zmiennych z pliku ~/.config/vars" >>~/.bashrc
    echo "[ -f \"\$HOME/.config/vars\" ] && . \"\$HOME/.config/vars\"" >>~/.bashrc
fi

# Pobiera konfigurację Neovim
git clone --depth 1 https://github.com/hattori-hanz0/neovim-lua \
    $NEOVIM_LUA_DIR

if [ -d "$HOME/.config/nvim/" ]; then
    echo "Znalazłem istniejącą konfigurację dla Neovim"
    mv $HOME/.config/nvim $HOME/.config/nvim.$DATABS
    echo "Przeniosłem istniejącą konfigurację do katalogu ~/.config/nvim.$DATABS"
fi

mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/nvim/docs

cp -R $NEOVIM_LUA_DIR/.config/nvim/* $HOME/.config/nvim
cp -R $NEOVIM_LUA_DIR/docs/* $HOME/.config/nvim/docs
cp $NEOVIM_LUA_DIR/README.md $HOME/.config/nvim/

# Pobiera schemat kolorów everforest
echo "Pobieram schemat kolorów everforest"
git clone --depth 1 https://github.com/sainnhe/everforest \
    $HOME/.local/share/nvim/site/pack/packer/start/everforest

# Pobiera menadżer pluginów packer.nvim
echo "Pobieram menadżera pluginów packer.nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Pobranie słownika języka polskiego
mkdir -p ~/.config/nvim/spell
curl http://ftp.vim.org/pub/vim/runtime/spell/pl.utf-8.spl -o ~/.config/nvim/spell/pl.utf-8.spl

# Tworzy link symboliczny dla ~/.config/vars
if [ ! -f $HOME/.config/vars ]; then
    cp $NEOVIM_LUA_DIR/.config/vars $HOME/.config/vars
else
    echo "Plik $HOME/.config/vars już istnieje."
    cp $HOME/.config/vars $HOME/.config/vars-$DATA
    echo "Skopiowałem obecną konfigurację do pliku ~/.config/vars-$DATA"
fi

# Tworzy linki symboliczne dla skryptów gp i ga
ln -sf $NEOVIM_LUA_DIR/bin/gp.sh $HOME/bin/gp.sh
ln -sf $NEOVIM_LUA_DIR/bin/ga.sh $HOME/bin/ga.sh

# Instaluje pluginy
nvim -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Włącza Neovim
nvim
