# Instalacja i wymagania

## Instalacja

- [Skrypt instalacyjny - źródło](https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh)

### Automatyczna instalacja

```shell
bash -c "$(curl -s https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh)"
```

Skrypt instalacyjny pobiera repozytorium **neovim-lua** do katalogu `$HOME/.local/share/neovim-lua`,
katalog instalacyjny jest zdefiniowany w zmiennej `NEOVIM_LUA_DIR=$HOME/.local/share/neovim-lua`
w skrypcie instalacyjnym `install.sh`.

Następnie kopiuje pliki do katalogu `~/.config/nvim`.

Jeśli istnieje katalog `~/.config/nvim` to wykonuje kopie zapasową.

Dodatkowo do pliku konfiguracyjnego `.bashrc` jest dodawane wczytanie pliku
`~/.config/vars`, w którym znajdują się zmienne `NOTES_DIR` i `GPG_ID`. Zmienna
`NOTES_DIR` określa katalog z notatkami, standardowo jest to `~/Notes`.
Natomiast zmienna `GPG_ID` określa ID klucza publicznego GPG.

### Ręczna instalacja

Innym sposobem jest pobranie skryptu instalacyjnego na dysk i uruchomienie go.

```shell
curl -LO https://raw.githubusercontent.com/hattori-hanz0/neovim-lua/main/install.sh
```

## Wymagania

- [Neovim](https://github.com/neovim/neovim) w wersji min. 0.6 - [Kompilacja Neovim ze źródeł](Kompilacja-ze-źródeł.md)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- fd (fd-find) - wyszukiwanie plików
- nodejs, npm

### Opcjonalnie

- [StyLua](https://github.com/JohnnyMorganz/StyLua) - formatowanie plików Lua
- sk (skim) - fzf napisany w języku Rust

## Po instalacji

### NPM Neovim

```
sudo npm install -g neovim
```

### Python Neovim

```
sudo dnf install python3-neovim
```

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

Program zostanie zainstalowany w katalogu `~/node_modules/.bin/`, który
najlepiej dodać do zmiennej systemowej `$PATH`.

Dla powłoki BASH może to wyglądać tak:

```sh
export PATH="$HOME/.local/bin:$HOME/bin:$HOME/node_modules/.bin:$PATH"
```

### Instalacja StyLua

StyLua jeśli nie istnieje w Twojej dystrybucji to można go pobrać już
skompilowaną wersję ze strony https://github.com/JohnnyMorganz/StyLua/releases
binarne pliki są dostępne dla systemu Linux, Windows oraz MacOS

Instalacja ze źródeł wymaga pakietu `cargo` w niektórych dystrybucjach istnieje
on jako `rust`.

```shell
git clone --depth 1 https://github.com/JohnnyMorganz/StyLua
cd StyLua
cargo build --release
cp target/release/stylua ~/bin
```

### Zmienne systemowe

```bash
NOTES_DIR - /home/$USER/Notes
BROWSER - /usr/bin/firefox
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
