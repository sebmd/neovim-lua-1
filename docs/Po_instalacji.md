# Po instalacji

## Minimap

Instalacja pluginu minimap.vim

- https://github.com/wfxr/minimap.vim

Plugin wymaga instalacji [code-minimap](https://github.com/wfxr/code-minimap)

```shell
cargo install --locked code-minimap
```

## Pobranie fzy-lua-native

```shell
cd "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/telescope-fzy-native.nvim/
git submodule update --init --recursive
```

## Instalacja Prettier

```shell
npm install --save-dev --save-exact prettier
```

## Zmienne systemowe

```bash
NOTES_DIR - /home/$USER/Notes
```

## Uruchomienie lokalnej wersji Neovim

W pliku `$HOME/bin/n6` dodajemy

```shell
VIMRUNTIME=~/.local/nvim/share/nvim/runtime/ .local/nvim/bin/nvim "$@"
```
