# Neovim Lua

![neovim lua](https://raw.githubusercontent.com/hattori-hanz0/neovim-config/main/img/neovim-lua.png)

## Instalacja menadżera pluginów paq-nvim

```
git clone --depth=1 https://github.com/savq/paq-nvim.git \
    "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim
```

## Pobranie fzy-lua-native

```
cd "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/telescope-fzy-native.nvim/
git submodule update --init --recursive
```

## Instalacja pluginów

```
:PaqInstall
```

## Instalacja zależności dla menadżera plików CHADtree

```
:CHADdeps
```

## Skróty klawiszowe

| skrót        | opis                                                                        |
|--------------|-----------------------------------------------------------------------------|
| `<spacja>`   | klawisz **LEADER**                                                          |
| `<leader>;`  | wejście do trybu **COMMAND**                                                |
| `<leader>vs` | dzieli okno pionowo                                                         |
| `<leader>sp` | dzieli okno poziomo                                                         |
| `qq`         | wyjście z edytora `:q`                                                      |
| `j`          | zmapowane jako `gj` - poruszanie się po zawiniętej linii                    |
| `k`          | zmapowane jako `gk` - poruszanie się po zawiniętej linii                    |
| `<ctrl-n>`   | przechodzi do następnej zmiany jeśli plik znajduje się w repozytorium git   |
| `<ctrl-p>`   | przechodzi do poprzedniej zmiany jeśli plik znajduje się w repozytorium git |
| `zn`         | przemapowuje `zn` jako `zm`                                                 |
| `zm`         | przemapowuje `zm` jako `zn`                                                 |
| `gh`         | przechodzi na początek linii                                                |
| `gl`         | przechodzi na koniec linii                                                  |
| `dh`         | usuwa wszystko od kursora do początku linii                                 |
| `dl`         | usuwa wslystko od kursora do końca linii                                    |
| `<leaader>,` | przechodzi do poprzedniego bufora                                           |
| `<leaader>.` | przechodzi do następnego bufora                                             |
| `<tab>`      | porusza się pomiędzy dwoma ostatnio używanymi bbuforami                     |
| `<leader>d`  | usuwa bufor `:bd`                                                           |
| `<leader>b`  | lista otwartych buforów `Telescope buffers`                                 |
| `<leader>n`  | otwiera / zamyka menadżer plików CHADtree                                   |
| `<leader>ss` | zapisuje sesję                                                              |
| `<leader>sl` | odtwarza zapisaną sesję                                                     |

## Poruszanie się po pliku pomocy Vim

| skrót       | opis                                                                                        |
|-------------|---------------------------------------------------------------------------------------------|
| `<ctrl-n>`  | przechodzi do następnego szukanego wyrażenia, przydatne przy użyciu polecenia `:helpgrep`   |
| `<ctrl-p>`  | przechodzi do poprzedniego szukanego wyrażenia, przydatne przy użyciu polecenia `:helpgrep` |
| `<leader>l` | przechodzi do linku pod kursorem                                                            |
| `<leader>h` | wraca do poprzedniego miejsca                                                               |
| `q`         | wychodzi z pomocy                                                                           |

## Skróty klawiszowe CHADtree

  * https://github.com/ms-jpq/chadtree/blob/chad/docs/KEYBIND.md

| skrót      | opis                                                                   |
|------------|------------------------------------------------------------------------|
| `q`        | zamyka CHADtree                                                        |
| `<enter>`  | otwiera plik / katalog pod znajdujący się pod kursorem                 |
| `-`        | zmniejsza szerokość okna CHADtree                                      |
| `=`        | zwiększa szerokość okna CHADtree                                       |
| `<ctrl-r>` | odświeża CHADtree                                                      |
| `b`        | zmienia katalog na znajdujący się pod kursorem                         |
| `c`        | ustawia widoczność na katalog pod kursorem                             |
| `C`        | ustawia widoczność na katalog nadrzędny                                |
| `w`        | otwiera plik pod kursorem w podziale pionowym                          |
| `W`        | otwiera plik pod kursorem w podziale poziomym                          |
| `o`        | otwiera plik pod kursorem w programie przypisanym dla tego typu plików |
| `<tab>`    | otwiera / zamyka drzewo katalogów                                      |
| `J`        | przechodzi do pliku w CHADtree obecnie edytowanego                     |
| `K`        | wyświetla informacje o pliku pod kursorem                              |
| `y`        | kopiuje pełną ścieżkę pliku pod kursorem do schowka systemowego        |
| `Y`        | kopiuje nazwę pliku pod kursorem do schowka systemowego                |
| `f`        | filtrowanie plików po nazwie np. `*.md`                                |
| `F`        | resetuje filtrowanie plików                                            |
| `s`        | zaznacza plik lub zaznaczone pliki w trybie VISUAL                     |
| `S`        | resetuje zaznaczenie                                                   |
| `a`        | tworzy nowy plik lub katalog jeśli na końcu dodamy znak `/`            |
| `r`        | zmienia nazwę pliku lub katalogu                                       |
| `p`        | kopiuje zaznaczone pliki do lokalizacji pod kursorem                   |
| `x`        | przenosi zaznaczone pliki do lokalizacji pod kursorem                  |
| `d`        | usuwa zaznaczone pliki                                                 |
| `t`        | przenosi plik do kosza, wymaga programu `trash-cli`                    |
| `.`        | pokazuje lub chowa ukryte pliki `.`                                    |

## Skróty klawiszowe vim-surround

| skrót        | opis                                                  |
|--------------|-------------------------------------------------------|
| `<leader>sw` | czeka na wprowadzenie znaku, którym otoczy wyraz      |
| `<leader>sW` | czeka na wprowadzenie znaku, którym otoczy WYRAZ      |
| `<leader>sp` | czeka na wprowadzenie znaku, który otoczy paragraf    |
| `<leader>ss` | czeka na wprowadzenie znaku, którym otoczy linię      |
| `<leader>sd` | czeka na wprowadzenie znaku, którym zostanie usunięty |

## Skróty klawiszowe Telescope

| skrót       | polecenie               |
|-------------|-------------------------|
| `<leader>p` | Telescope find_files    |
| `<leader>r` | Telescope registers     |
| `<leader>g` | Telescope live_grep     |
| `<leader>b` | Telescope buffers       |
| `<leader>j` | Telescope help_tags     |
| `<leader>f` | Telescope file_browser  |
| `<leader>s` | Telescope spell_suggest |
| `<leader>i` | Telescope git_status    |
| `<leader>t` | Telescope tags          |

## Neuron.nvim

| skrót | opis                                                   |
|-------|--------------------------------------------------------|
| `gzn` | nowa notatka                                           |
| `gzz` | wyszukiwanie notatek                                   |
| `gzZ` | wstawia id znlezionej notatki                          |
| `gzb` | znajduje odnośniki do bieżącej notatki                 |
| `gzB` | wstawia id znalezionego odnośnika do bieżącej notatki  |
| `gzt` | wyszukuje wszystkie tagi i jest wstawia                |
| `gzs` | uruchamia serwer WWW pod adresem http://127.0.0.1:8200 |
| `gz]` | przechodzi do następnego linku                         |
| `gz[` | przechodzi do poprzedniego linku                       |
