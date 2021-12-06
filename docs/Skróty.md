# Skróty klawiszowe

## Skróty klawiszowe Tryb NORMAL

| skrót        | opis                                                                                   |
| ------------ | -------------------------------------------------------------------------------------- |
| `<spacja>`   | Klawisz **LEADER**                                                                     |
| `<leader>;`  | Wejście do trybu **COMMAND**                                                           |
| `j`          | Zmapowane jako `gj` - poruszanie się po zawiniętej linii                               |
| `k`          | Zmapowane jako `gk` - poruszanie się po zawiniętej linii                               |
| `zn`         | Przemapowuje `zn` jako `zm` - zamyka zagnieżdżenia                                     |
| `zm`         | Przemapowuje `zm` jako `zn` - otwiera zagnieżdżenia                                    |
| `gh`         | Przechodzi na początek linii                                                           |
| `gl`         | Przechodzi na koniec linii                                                             |
| `dh`         | Usuwa wszystko od kursora do początku linii                                            |
| `dl`         | Usuwa wszystko od kursora do końca linii                                               |
| `d<spacja>`  | Usuwa od kursora do pierwszego wystąpienia znaku spacji                                |
| `<leader>w`  | Zapisuje plik - uruchamia funkcję Write()                                              |
| `<leader>x`  | Zapisuje i zamyka edytor                                                               |
| `<leader>q`  | Zamyka edytor `:q`                                                                     |
| `qq`         | Zamyka edytor `:q`                                                                     |
| `<leader>n`  | Otwiera / zamyka menadżer plików NvimTree lub CHADtree                                 |
| `<leader>sa` | Zaznacza cały plik                                                                     |
| `<leader>u`  | Otwiera okno zmian Undotree                                                            |
| `<leader>v`  | Otwiera plik konfiguracyjny `$MYVIMRC`                                                 |
| `<leader>sv` | Przeładowuje plik konfiguracyjny Lua `$MYVIMRC`                                        |
| `ESC`        | Wyłącza podświetlanie szukanego słowa `:nohl`                                          |
| `Y`          | Kopiuje od kursora do końca linii                                                      |
| `ya`         | Kopiuje cały plik                                                                      |
| `yh`         | Kopiuje linię z pominięcie pierwszego wyrazu / znaku bez znaku końca linii             |
| `<leader>a`  | Wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długość 'textwidth' znaków 'gqap' |
| `+`          | Zwiększa liczbę o jeden                                                                |
| `-`          | Zmniejsza liczbę o jeden                                                               |
| `<leader>zz` | Wyszukuje plików w `git/github/dotfiles`                                               |
| `<leader>zn` | Wyszukuje plików w `~/.config/nvim/`                                                   |
| `<leader>ze` | Uruchamia tryb ZenMode                                                                 |
| `<leader>?`  | Uruchamia podręcznej pomocy `:Cheatsheet`                                              |

## Telescope

| skrót        | opis                                              |
| ------------ | ------------------------------------------------- |
| `<leader>p`  | `Telescope find_files`                            |
| `<leader>r`  | `Telescope registers` - lista rejestrów           |
| `<leader>g`  | `Telescope live_grep`                             |
| `<leader>b`  | `Telescope buffers` - lista otwartych buforów     |
| `<leader>j`  | `Telescope help_tags`                             |
| `<leader>f`  | `Telescope file_browser`                          |
| `<leader>s`  | `Telescope spell_suggest`                         |
| `<leader>i`  | `Telescope git_status` - lista plików ze zmianami |
| `<leader>t`  | `Telescope tags`                                  |
| `<leader>P`  | `Telescope project`                               |

## Bufory

| skrót        | opis                                                   |
| ------------ | ------------------------------------------------------ |
| `<leaader>,` | przechodzi do poprzedniego bufora                      |
| `<leaader>.` | przechodzi do następnego bufora                        |
| `<tab>`      | porusza się pomiędzy dwoma ostatnio używanymi buforami |
| `<leader>d`  | usuwa bufor `:bdelete`                                 |

## Okna

| skrót        | opis                                 |
| ------------ | ------------------------------------ |
| `<leader>vs` | dzieli okno pionowo                  |
| `<leader>sp` | dzieli okno poziomo                  |
| `<leader>o`  | ustawia bieżące okno na cały ekran   |
| `ctrl-h`     | przechodzi do okna po lewej stronie  |
| `ctrl-l`     | przechodzi do okna po prawej stronie |
| `ctrl-j`     | przechodzi do okna poniżej           |
| `ctrl-k`     | przechodzi do okna powyżej           |
| `alt-j`      | zwiększa rozmiar okna w poziomie     |
| `alt-k`      | zmniejsza rozmiar okna w poziomie    |
| `alt-h`      | zmniejsza rozmiar okna w pionie      |
| `alt-l`      | zwiększa rozmiar okna w pionie       |

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
| `<leader>ee` | wyszukuje notatek w katalogu `$NOTES_DIR` - funkcja `search_notes_dir` |
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

| skrót         | opis                                                                                 |
| ------------- | ------------------------------------------------------------------------------------ |
| `<cr>` / `o`  | Przechodzi do katalogu wyżej jeśli naciśniemy skrót na `..`                          |
| `<cr>` / `o`  | Rozwija / zwija zawartość katalogu                                                   |
| `<cr>` / `o`  | Otwiera plik pod kursorem                                                            |
| `<C-]>`       | Wchodzi do katalogu pod kursorem                                                     |
| `-`           | Przechodzi do katalogu wyżej                                                         |
| `<BS>`        | Zamyka otwarty katalog                                                               |
| `a`           | Dodaje nowy plik jeśli zakończymy nazwę znakiem `/` to zostanie utworzony katalog    |
| `r`           | Zmienia nazwę pliku lub katalogu                                                     |
| `<C-r>`       | Zmienia nazwę pliku lub katalogu nie podpowiadając jego obecnej nazwy                |
| `x`           | Zaznacza / odznacza plik lub katalog do wycięcia                                     |
| `c`           | Zaznacza / odznacza plik lub katalog do skopiowania                                  |
| `y`           | Kopiuje nazwę pliku pod kursorem do schowka systemowego                              |
| `Y`           | Kopiuje relatywną ścieżkę do schowka systemowego                                     |
| `gy`          | Kopiuje pełną ścieżkę pliku do schowka systemowego                                   |
| `p`           | Wkleja wcześniej zaznaczony plik do skopiowania lub wycięcia                         |
| `d`           | Usuwa plik - wymaga potwierdzenia                                                    |
| `D`           | Przenosi plik do kosza - wymaga dodatkowej konfiguracji                              |
| `]c`          | Przechodzi do kolejnego pliku w repozytorium git, który w jakiś sposób go zmienił    |
| `[c`          | Przechodzi do poprzedniego pliku w repozytorium git, który w jakiś sposób go zmienił |
| `s`           | Otwiera plik za pomocą standardowego programu skojarzonego z typem pliku             |
| `<C-v>`       | Otwiera plik w podziale pionowym                                                     |
| `<C-x>`       | Otwiera plik w podziale poziomym                                                     |
| `<C-t>`       | Otwiera plik w nowej zakładce                                                        |
| `<Tab>`       | Otwiera plik jako podgląd pozostając w menadżerze plików                             |
| `I`           | Chowa / pokazuje ukryte pliki i katalogi                                             |
| `H`           | Chowa / pokazuje pliki konfiguracyjne zaczynające się od znaku `.`                   |
| `R`           | Odświeża listę plików                                                                |

Za pomocą skrótu `a` możemy dodawać kilka plików lub katalogów jednocześnie np. `foo/bar/baz/f`
utworzy katalog `foo/bar/baz/` a w nim plik `f`

- Lewy klawisz myszki zachowuj się jak skrót `<cr>`
- Prawy klawisz myszki zachowuje się jak skrót `<C-]>`

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
