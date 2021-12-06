# Skróty klawiszowe

## Skróty klawiszowe Tryb NORMAL

| skrót        | opis                                                                                   |
| ------------ | -------------------------------------------------------------------------------------- |
| `<spacja>`   | klawisz **LEADER**                                                                     |
| `<leader>;`  | wejście do trybu **COMMAND**                                                           |
| `j`          | zmapowane jako `gj` - poruszanie się po zawiniętej linii                               |
| `k`          | zmapowane jako `gk` - poruszanie się po zawiniętej linii                               |
| `zn`         | przemapowuje `zn` jako `zm` - zamyka zagnieżdżenia                                     |
| `zm`         | przemapowuje `zm` jako `zn` - otwiera zagnieżdżenia                                    |
| `gh`         | przechodzi na początek linii                                                           |
| `gl`         | przechodzi na koniec linii                                                             |
| `dh`         | usuwa wszystko od kursora do początku linii                                            |
| `dl`         | usuwa wszystko od kursora do końca linii                                               |
| `d<spacja>`  | usuwa od kursora do pierwszego wystąpienia znaku spacji                                |
| `<leader>w`  | zapisuje plik                                                                          |
| `<leader>x`  | zapisuje i zamyka edytor                                                               |
| `<leader>q`  | zamyka edytor                                                                          |
| `qq`         | wyjście z edytora `:q`                                                                 |
| `<leaader>,` | przechodzi do poprzedniego bufora                                                      |
| `<leaader>.` | przechodzi do następnego bufora                                                        |
| `<tab>`      | porusza się pomiędzy dwoma ostatnio używanymi buforami                                |
| `<leader>vs` | dzieli okno pionowo                                                                    |
| `<leader>sp` | dzieli okno poziomo                                                                    |
| `<leader>o`  | ustawia bieżące okno na cały ekran                                                     |
| `<leader>d`  | usuwa bufor `:bdelete`                                                                 |
| `<leader>n`  | otwiera / zamyka menadżer plików NvimTree lub CHADtree                                              |
| `<leader>sa` | zaznacza cały plik                                                                     |
| `<leader>ss` | zapisuje sesję                                                                         |
| `<leader>sl` | odtwarza zapisaną sesję                                                                |
| `<leader>u`  | Otwiera Undotree                                                                       |
| `<leader>v`  | Otwiera plik konfiguracyjny `$MYVIMRC`                                                 |
| `<leader>sv` | Przeładowuje plik konfiguracyjny Lua `$MYVIMRC`                                        |
| `ESC`        | Wyłącza podświetlanie szukanego słowa `:nohl`                                          |
| `Y`          | Kopiuje od kursora do końca linii                                                      |
| `ya`         | Kopiuje cały plik                                                                      |
| `yh`         | Kopiuje linię z pominięcie pierwszego wyrazu / znaku bez znaku końca linii             |
| `<leader>a`  | Wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długość 'textwidth' znaków 'gqap' |
| `alt-j`      | Przenosi linię w dół                                                                   |
| `alt-k`      | Przenosi linię w górę                                                                  |
| `+`          | zwiększa liczbę o jeden                                                                |
| `-`          | zmniejsza liczbę o jeden                                                               |
| `<leader>p`  | Telescope find_files                                                                   |
| `<leader>r`  | Telescope registers                                                                    |
| `<leader>g`  | Telescope live_grep                                                                    |
| `<leader>b`  | lista otwartych buforów `Telescope buffers`                                            |
| `<leader>j`  | Telescope help_tags                                                                    |
| `<leader>f`  | Telescope file_browser                                                                 |
| `<leader>s`  | Telescope spell_suggest                                                                |
| `<leader>i`  | Telescope git_status                                                                   |
| `<leader>t`  | Telescope tags                                                                         |
| `<leader>P`  | Telescope project                                                                      |
| `<leader>zz` | Wyszukuje plików w `git/github/dotfiles`                                               |
| `<leader>zn` | Wyszukuje plików w `~/.config/nvim/`                                                   |
| `<leader>ze` | Uruchamia tryb ZenMode                                                                 |
| `<leader>?`  | Uruchamia podręcznej pomocy `:Cheatsheet`                                              |

## Poruszanie się pomiędzy oknami

| skrót    | opis                                 |
| -------- | ------------------------------------ |
| `ctrl-h` | przechodzi do okna po lewej stronie  |
| `ctrl-l` | przechodzi do okna po prawej stronie |
| `ctrl-j` | przechodzi do okna poniżej           |
| `ctrl-k` | przechodzi do okna powyżej           |

## Zmiana rozmiaru okna

| skrót   | opis                              |
| ------- | --------------------------------- |
| `alt-j` | zwiększa rozmiar okna w poziomie  |
| `alt-k` | zmniejsza rozmiar okna w poziomie |
| `alt-h` | zmniejsza rozmiar okna w pionie   |
| `alt-l` | zwiększa rozmiar okna w pionie    |

## Skróty klawiszowe tryb INSERT

| skrót    | opis                                         |
| -------- | -------------------------------------------- |
| `ctrl-k` | porusza kursorem jedną linię w dół           |
| `ctrl-j` | porusza kursorem jedną linię w górę          |
| `ctrl-h` | poruszanie się kursorem o jeden znak w lewo  |
| `ctrl-l` | poruszanie się kursorem o jeden znak w prawo |

## Skróty klawiszowe tryb COMMAND

| skrót    | opis                                         |
| -------- | -------------------------------------------- |
| `ctrl-j` | historia komend - następna komenda           |
| `ctrl-k` | historia komend - wcześniejsza komenda       |
| `ctrl-h` | poruszanie się kursorem o jeden znak w lewo  |
| `ctrl-l` | poruszanie się kursorem o jeden znak w prawo |

## Poruszanie się po pliku pomocy Vim

| skrót       | opis                                                                                        |
| ----------- | ------------------------------------------------------------------------------------------- |
| `<ctrl-n>`  | przechodzi do następnego szukanego wyrażenia, przydatne przy użyciu polecenia `:helpgrep`   |
| `<ctrl-p>`  | przechodzi do poprzedniego szukanego wyrażenia, przydatne przy użyciu polecenia `:helpgrep` |
| `<leader>l` | przechodzi do linku pod kursorem                                                            |
| `<leader>h` | wraca do poprzedniego miejsca                                                               |
| `q`         | wychodzi z pomocy                                                                           |

## Notatki

| skrót        | opis                                                                   |
| ------------ | ---------------------------------------------------------------------- |
| `<leader>si` | przenosi linię lub zaznaczenie do $NOTES_DIR/index.md                  |
| `<leader>sd` | przenosi linię lub zaznaczenie do $NOTES_DIR/done.md                   |
| `<leader>sn` | przenosi linię lub zaznaczenie do $NOTES_DIR/notatki.md                |
| `<leader>ei` | otwiera plik `$NOTES_DIR/index.md`                                     |
| `<leader>ed` | otwiera plik `$NOTES_DIR/done.md`                                      |
| `<leader>en` | otwiera plik `$NOTES_DIR/notatki.md`                                   |
| `<leader>ej` | otwiera plik `$NOTES_DIR/diary/YYYY-MM-DD.md` - funkcja `:DiaryNotes`  |
| `<leader>ee` | wyszukuje notatek w katalogu `$NOTES_DIR` - funkcja `search_notes_dir`  |
| `<leader>er` | przeszukuje notatki w katalogu `$NOTES_DIR` - funkcja `grep_notes_dir` |

## Przełączanie schematów kolorystycznych

| skrót      | opis                                               |
| ---------- | -------------------------------------------------- |
| `F8`       | następny schemat kolorystyczny                     |
| `shift-F8` | poprzedni schemat kolorystyczny                    |
| `ctrl-F8`  | wybiera przypadkowy schemat kolorystyczny          |
| `F9`       | wyklucza schemat kolorystyczny z listy             |
| `shift-F9` | wyświetla nazwę bieżącego schematu kolorystycznego |

## Plugin gitsigns

| skrót      | opis                                                                        |
| ---------- | --------------------------------------------------------------------------- |
| `<ctrl-n>` | przechodzi do następnej zmiany jeśli plik znajduje się w repozytorium git   |
| `<ctrl-p>` | przechodzi do poprzedniej zmiany jeśli plik znajduje się w repozytorium git |
| `gj`       | przechodzi do następnej zmiany jeśli plik znajduje się w repozytorium git   |
| `gk`       | przechodzi do poprzedniej zmiany jeśli plik znajduje się w repozytorium git |

## Plugin vim-surround

| skrót         | opis                                                  |
| ------------- | ----------------------------------------------------- |
| `<leader>sw`  | czeka na wprowadzenie znaku, którym otoczy wyraz      |
| `<leader>sW`  | czeka na wprowadzenie znaku, którym otoczy WYRAZ      |
| `<leader>ssp` | czeka na wprowadzenie znaku, który otoczy paragraf    |
| `<leader>ss`  | czeka na wprowadzenie znaku, którym otoczy linię      |
| `<leader>sdd` | czeka na wprowadzenie znaku, którym zostanie usunięty |

## Skróty klawiszowe nvim-tree.lua

- https://github.com/kyazdani42/nvim-tree.lua#keybindings

### Default actions

- `<CR>` or `o` on `..` will cd in the above directory
- `<C-]>` will cd in the directory under the cursor
- `<BS>` will close current opened directory or parent
- type `a` to add a file. Adding a directory requires leaving a leading `/` at the end of the path.
  > you can add multiple directories by doing foo/bar/baz/f and it will add foo bar and baz directories and f as a file
- type `r` to rename a file
- type `<C-r>` to rename a file and omit the filename on input
- type `x` to add/remove file/directory to cut clipboard
- type `c` to add/remove file/directory to copy clipboard
- type `y` will copy name to system clipboard
- type `Y` will copy relative path to system clipboard
- type `gy` will copy absolute path to system clipboard
- type `p` to paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
- type `d` to delete a file (will prompt for confirmation)
- type `D` to trash a file (configured in setup())
- type `]c` to go to next git item
- type `[c` to go to prev git item
- type `-` to navigate up to the parent directory of the current file/directory
- type `s` to open a file with default system application or a folder with default file manager (if you want to change the command used to do it see `:h nvim-tree.setup` under `system_open`)
- if the file is a directory, `<CR>` will open the directory otherwise it will open the file in the buffer near the tree
- if the file is a symlink, `<CR>` will follow the symlink (if the target is a file)
- `<C-v>` will open the file in a vertical split
- `<C-x>` will open the file in a horizontal split
- `<C-t>` will open the file in a new tab
- `<Tab>` will open the file as a preview (keeps the cursor in the tree)
- `I` will toggle visibility of hidden folders / files
- `H` will toggle visibility of dotfiles (files/folders starting with a `.`)
- `R` will refresh the tree
- Double left click acts like `<CR>`
- Double right click acts like `<C-]>`

## Skróty klawiszowe CHADtree

- https://github.com/ms-jpq/chadtree/blob/chad/docs/KEYBIND.md

| skrót      | opis                                                                   |
| ---------- | ---------------------------------------------------------------------- |
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

## Telescope project

Skróty klawiszowe dostępne w oknie projektów

| skrót      | opis                                                       |
| ---------- | ---------------------------------------------------------- |
| `<ctrl-d>` | usuwa projekt pod kursorem                                 |
| `<ctrl-v>` | zmienia nazwę projektu pod kursorem                        |
| `<ctrl-a>` | tworzy projekt                                             |
| `<ctrl-s>` | przeszukuje pliki (grep) w projekcie pod kursorem          |
| `<ctrl-b>` | wyszukuje pliki w projekcie pod kursorem                   |
| `<ctrl-w>` | zmienia katalog na wybrany projekt bez otwierania go       |
| `<ctrl-r>` | wyszukuje ostatnio otwarte pliki w projekcie pod kursorem  |
| `<ctrl-f>` | wyszukuje pliki w projekcie pod kursorem bez podkatalogów  |

## Neuron.nvim

| skrót | opis                                                   |
| ----- | ------------------------------------------------------ |
| `gzn` | nowa notatka                                           |
| `gzz` | wyszukiwanie notatek                                   |
| `gzZ` | wstawia id znalezionej notatki                         |
| `gzb` | znajduje odnośniki do bieżącej notatki                 |
| `gzB` | wstawia id znalezionego odnośnika do bieżącej notatki  |
| `gzt` | wyszukuje wszystkie tagi i jest wstawia                |
| `gzs` | uruchamia serwer WWW pod adresem http://127.0.0.1:8200 |
| `gz]` | przechodzi do następnego linku                         |
| `gz[` | przechodzi do poprzedniego linku                       |
