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

### Opcjonalnie

- cargo / rust - kompilacja oprogramowania w języku Rust
- go - kompilacja oprogramowania w języku Go lang
- fd (fd-find) - wyszukiwanie plików
- nodejs, npm - JavaScript
