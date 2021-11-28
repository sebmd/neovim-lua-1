# Neovim Lua

![neovim lua](https://raw.githubusercontent.com/hattori-hanz0/neovim-config/main/img/neovim-lua.png)

## Instalacja

```shell
bash -c "$(curl -s https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh)"
```

## Instalacja zależności dla menadżera plików CHADtree

```
:CHADdeps
```

## Pobranie fzy-lua-native

```
cd "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/telescope-fzy-native.nvim/
git submodule update --init --recursive
```

## Instalacja Prettier

```
npm install --save-dev --save-exact prettiernpm install --save-dev --save-exact prettier
```

## Instalacja Neuron

- https://github.com/srid/neuron

```
curl -sfLo ~/bin/neuron.tgz https://github.com/srid/neuron/releases/download/1.0.1.0/neuron-1.0.1.0-linux.tar.gz
tar zxf ~/bin/neuron.tgz -C ~/bin
rm ~/bin/neuron.tgz
```

## Zmienne systemowe

```
NOTES_DIR - /home/$USER/Notes
```

## Dokumentacja

- [skróty](docs/Skróty.md)
- [komendy](docs/Komendy.md)
- [pluginy](docs/Pluginy.md)
- [funkcje](docs/Funkcje.md)
