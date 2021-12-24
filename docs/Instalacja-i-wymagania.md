# Instalacja i wymagania

## Instalacja

[Skrypt instalacyjny - źródło](https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh)

### Automatyczna instalacja

```shell
bash -c "$(curl -s https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh)"
```

Skrypt instalacyjny pobiera repozytorium **neovim-lua** do katalogu `$HOME/.local/share/neovim-lua`,
katalog instalacyjny jest zdefiniowany w zmiennej `NEOVIM_LUA_DIR=$HOME/.local/share/neovim-lua`.

Pliki konfiguracyjne są linkami symbolicznymi do ich odpowiedników w katalogu instalacyjnym.

Dodatkowo do pliku konfiguracyjnego `.bashrc` jest dodawane wczytanie pliku `~/.config/vars`,
w którym znajdują się zmienne `NOTES_DIR` i `GPG_ID`. Zmienna `NOTES_DIR` określa katalog
z notatkami, standardowo jest to `~/Notes`. Natomiast zmienna `GPG_ID` określa ID klucza
publicznego GPG.

### Ręczna instalacja

Innym sposobem jest pobranie skryptu na dysk, ewentualnie modyfikacji i uruchomienie go.

```shell
curl -LO https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh
```

## Wymagania

- [Neovim](https://github.com/neovim/neovim) w wersji min. 0.6
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)

[Kompilacja Neovim ze źródeł](Kompilacja-ze-źródeł.md)

### Opcjonalnie

- cargo / rust - kompilacja oprogramowania w języku Rust
- go - kompilacja oprogramowania w języku Go lang
- fd (fd-find) - wyszukiwanie plików
- nodejs, npm - JavaScript

## Po instalacji

### Minimap

Instalacja pluginu minimap.vim

- https://github.com/wfxr/minimap.vim

Plugin wymaga instalacji [code-minimap](https://github.com/wfxr/code-minimap)

```shell
cargo install --locked code-minimap
```

### Pobranie fzy-lua-native

```shell
cd "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/telescope-fzy-native.nvim/
git submodule update --init --recursive
```

### Instalacja Prettier

```shell
npm install --save-dev --save-exact prettier
```

### Zmienne systemowe

```bash
NOTES_DIR - /home/$USER/Notes
```

### Uruchomienie lokalnej wersji Neovim

W pliku `$HOME/bin/n6` dodajemy

```shell
VIMRUNTIME=~/.local/nvim/share/nvim/runtime/ .local/nvim/bin/nvim "$@"
```

### Plik ~/.config/nvim/lua/local.lua

W tym pliku można umieścić dodatkową konfigurację

Przykład konfiguracji formatter

```lua
-- formatter
require("formatter").setup({
  filetype = {
    javascript = {
      -- JavaScript
      function()
        return {
          exe = "~/node_modules/.bin/prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    markdown = {
      -- Markdown
      function()
        return {
          exe = "~/node_modules/.bin/prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    html = {
      -- HTML
      function()
        return {
          exe = "~/node_modules/.bin/prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    lua = {
      -- LUA
      function()
        return {
          exe = "~/.local/bin/stylua",
          args = {
            "--config-path ~/.config/stylua/stylua.toml",
            "-",
          },
          stdin = true,
        }
      end,
    },
  },
})
```
