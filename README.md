# Neovim Lua

![neovim lua](https://raw.githubusercontent.com/hattori-hanz0/neovim-config/main/img/neovim-lua.png)

## Instalacja

```shell
bash -c "$(curl -s https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh)"
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

## Zmienne systemowe

```
NOTES_DIR - /home/$USER/Notes
```

## Dokumentacja

- [skróty](docs/Skróty.md)
- [komendy](docs/Komendy.md)
- [pluginy](docs/Pluginy.md)
- [funkcje](docs/Funkcje.md)
