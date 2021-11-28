# Neovim Lua

![neovim lua](https://raw.githubusercontent.com/hattori-hanz0/neovim-config/main/img/neovim-lua.png)

## Instalacja menadżera pluginów packer.nvim

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Instalacja pluginów

```
:PackerInstall
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

## Komendy

| funkcja             | opis                                                   |
| ------------------- | ------------------------------------------------------ |
| `DiaryNotes`        | edycja dzisiejszej notatki w katalogu $NOTES_DIR       |
| `GA`                | uruchamia skrypt dodający zmiany do repozytorium git   |
| `GP`                | uruchamia skrypt git add, git commit, git push         |
| `GR`                | uruchamia program w Golang za pomocą komendy `:GoRun`  |
| `InsertDiaryHeader` | wstawia nagłówek 1 stopnia oraz bieżącą datę i godzina |
| `PI`                | instalacja pluginów za pomocą komendy `PackerInstall`  |
| `RevBackground`     | odwraca kolor tła jasny / ciemny                       |
| `S`                 | wykonuje polecenie `:source %`                         |
| `Time`              | pokazuje datę i godzinę                                |
| `UpdateVimrc`       | wywołuje funkcję `UpdateVimrc`                         |
| `VimrcVersion`      | pokazuje wersję konfiguracji Neovim (np. init.lua 2.1) |
| `Write`             | zapisuje zmiany pliku                                  |

## Skróty klawiszowe

### Skróty klawiszowe Tryb NORMAL

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
| `<tab>`      | porusza się pomiędzy dwoma ostatnio używanymi bbuforami                                |
| `<leader>vs` | dzieli okno pionowo                                                                    |
| `<leader>sp` | dzieli okno poziomo                                                                    |
| `<leader>o`  | ustawia bieżące okno na cały ekran                                                     |
| `<leader>d`  | usuwa bufor `:bdelete`                                                                 |
| `<leader>n`  | otwiera / zamyka menadżer plików CHADtree                                              |
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
| `<leader>a`  | Wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długośc 'textwidth' znaków 'gqap' |
| `ctrl-j`     | Przenosi linię w dół                                                                   |
| `ctrl-k`     | Przenosi linię w górę                                                                  |
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

### Okna

| skrót    | opis                                 |
| -------- | ------------------------------------ |
| `ctrl-h` | przechodzi do okna po lewej stronie  |
| `ctrl-l` | przechodzi do okna po prawej stronie |
| `ctrl-j` | przechodzi do okna poniżej           |
| `ctrl-k` | przechodzi do okna powyżej           |

### Skróty klawiszowe tryb INSERT

| skrót    | opis                                         |
| -------- | -------------------------------------------- |
| `ctrl-k` | porusza kurosrem jedną linię w dół           |
| `ctrl-j` | porusza kurosrem jedną linię w górę          |
| `ctrl-h` | poruszanie się kursorem o jeden znak w lewo  |
| `ctrl-l` | poruszanie się kursorem o jeden znak w prawo |

### Skróty klawiszowe tryb COMMAND

| skrót    | opis                                         |
| -------- | -------------------------------------------- |
| `ctrl-j` | historia komend - następna komenda           |
| `ctrl-k` | historia komend - wcześniejsza komenda       |
| `ctrl-h` | poruszanie się kursorem o jeden znak w lewo  |
| `ctrl-l` | poruszanie się kursorem o jeden znak w prawo |

### Poruszanie się po pliku pomocy Vim

| skrót       | opis                                                                                        |
| ----------- | ------------------------------------------------------------------------------------------- |
| `<ctrl-n>`  | przechodzi do następnego szukanego wyrażenia, przydatne przy użyciu polecenia `:helpgrep`   |
| `<ctrl-p>`  | przechodzi do poprzedniego szukanego wyrażenia, przydatne przy użyciu polecenia `:helpgrep` |
| `<leader>l` | przechodzi do linku pod kursorem                                                            |
| `<leader>h` | wraca do poprzedniego miejsca                                                               |
| `q`         | wychodzi z pomocy                                                                           |

### Notatki

| skrót        | opis                                                                   |
| ------------ | ---------------------------------------------------------------------- |
| `<leader>si` | przenosi linię lub zaznaczenie do $NOTES_DIR/index.md                  |
| `<leader>sd` | przenosi linię lub zaznaczenie do $NOTES_DIR/done.md                   |
| `<leader>sn` | przenosi linię lub zaznaczenie do $NOTES_DIR/notatki.md                |
| `<leader>ei` | otwiera plik `$NOTES_DIR/index.md`                                     |
| `<leader>ed` | otwiera plik `$NOTES_DIR/done.md`                                      |
| `<leader>en` | otwiera plik `$NOTES_DIR/notatki.md`                                   |
| `<leader>ej` | otwiera plik `$NOTES_DIR/diary/YYYY-MM-DD.md` - funkcja `:DiaryNotes`  |
| `<leader>ee` | wyszukuje notatek w katalogu `$NOTES_DIR` - funcja `search_notes_dir`  |
| `<leader>er` | przeszukuje notatki w katalogu `$NOTES_DIR` - funkcja `grep_notes_dir` |

### Przełączanie schematów kolorstycznych

| skrót      | ops                                                |
| ---------- | -------------------------------------------------- |
| `F8`       | następny schemat kolorystyczny                     |
| `shift-F8` | poprzedni schemat kolorystyczny                    |
| `ctrl-F8`  | wybiera przypadkowy schemat kolorystyczny          |
| `F9`       | wyklucza schemat kolorystyczny z listy             |
| `shift-F9` | wyświetla nazwę bieżącego schematu kolorystycznego |

### Plugin gitsigns

| skrót      | opis                                                                        |
| ---------- | --------------------------------------------------------------------------- |
| `<ctrl-n>` | przechodzi do następnej zmiany jeśli plik znajduje się w repozytorium git   |
| `<ctrl-p>` | przechodzi do poprzedniej zmiany jeśli plik znajduje się w repozytorium git |
| `gj`       | przechodzi do następnej zmiany jeśli plik znajduje się w repozytorium git   |
| `gk`       | przechodzi do poprzedniej zmiany jeśli plik znajduje się w repozytorium git |

### Plugin vim-surround

| skrót         | opis                                                                 |
| ------------- | -------------------------------------------------------------------- |
| `<leader>sw`  | czeka na wprowadzenie znaku, którym otoczy wyraz - vim-surround      |
| `<leader>sW`  | czeka na wprowadzenie znaku, którym otoczy WYRAZ - vim-surround      |
| `<leader>sp`  | czeka na wprowadzenie znaku, który otoczy paragraf - vim-surround    |
| `<leader>ss`  | czeka na wprowadzenie znaku, którym otoczy linię - vim-surround      |
| `<leader>sdd` | czeka na wprowadzenie znaku, którym zostanie usunięty - vim-surround |

### Skróty klawiszowe CHADtree

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

### Telescope project

| skrót      | opis                                                       |
| ---------- | ---------------------------------------------------------- |
| `<ctrl-d>` | usuwa pojekt pod kursorem                                  |
| `<ctrl-v>` | zmienia nazwę projektu pod kursorem                        |
| `<ctrl-a>` | tworzy projekt                                             |
| `<ctrl-s>` | przeszukuje pliki (grep) w projekcie pod kursorem          |
| `<ctrl-b>` | wyszukuje pliki w projekcie pod kursorem                   |
| `<ctrl-w>` | zmienia katalog na wybrany projekt bez otwieerania go      |
| `<ctrl-r>` | wyszukuje ostatnio otwarte pliki w projektcie pod kursorem |
| `<ctrl-f>` | wyszukuje pliki w projekcie pod kursorem bez podkatalogów  |

### Neuron.nvim

| skrót | opis                                                   |
| ----- | ------------------------------------------------------ |
| `gzn` | nowa notatka                                           |
| `gzz` | wyszukiwanie notatek                                   |
| `gzZ` | wstawia id znlezionej notatki                          |
| `gzb` | znajduje odnośniki do bieżącej notatki                 |
| `gzB` | wstawia id znalezionego odnośnika do bieżącej notatki  |
| `gzt` | wyszukuje wszystkie tagi i jest wstawia                |
| `gzs` | uruchamia serwer WWW pod adresem http://127.0.0.1:8200 |
| `gz]` | przechodzi do następnego linku                         |
| `gz[` | przechodzi do poprzedniego linku                       |

## Funkcje

### Funkcja Write

Funkcja `Write` służy głównie do zapisania pliku, jednak robi to w dość szczególny sposób, używa
komendy `:update`, jeśli plik został zmieniony, jeśli plik nie został zmieniony, nic nie robi,
oraz kiedy plik nie istnieje używa komendy `:write` jednocześnie tworząc ten plik.

```lua
-- Funkcja Write()
api.nvim_exec(
  [[
    function! Write()
        " wywołuje funkcję UpdateVimrc
        " autocmd! BufWritePost $MYVIMRC call UpdateVimrc() | source % | redraw
        autocmd! BufWritePost $MYVIMRC call UpdateVimrc()
        if filereadable(expand("%"))
            for buf in getbufinfo("%")
                if buf.changed
                    execute ':update'
                    echo "Zapisałem" expand("%:p")
                else
                    echo "Brak zmian w" expand("%:p")
                endif
            endfor
        else
            execute ':write'
            echo "Utworzyłem" expand("%:p")
        endif
    endfunction
]],
  false
)
```

### Funkcja InsertDiaryHeader

Wstawia w bieżącej linii nagłówek pierwszego stopnia Markdown `#` oraz bieżącą date i godzinę.
Następnie ustawia kursor za znakiem `#`

```
# | 2021-11-28 16:18:16
```

```lua
-- Funkcja InsertDiaryHeader() wstawia nagłówej # i bieżący czas
api.nvim_exec(
  [[
    function! InsertDiaryHeader()
        normal! o# <temat> <data>
        execute ':s/<data>/\=strftime("%Y-%m-%d %H:%M:%S")/'
        normal! 0f<d7l
        normal! kdd
        normal! 02l
        execute ':startinsert'
    endfunction
]],
  false
)
```

### Funkcja DiaryNotes

```lua
-- Funkcja DiaryNotes() otwiera plik dziennika do edycji wstawiając nagłówek za pomocą funkcji
-- InsertDiaryHeader
api.nvim_exec(
  [[
    " funkcję uruchamia skrót <leader>e
    function! DiaryNotes()
        if filereadable(expand("$NOTES_DIR/diary/".strftime("%F").".md"))
            execute ":e "(expand("$NOTES_DIR/diary/".strftime("%F").".md"))""
        else
            execute ":e $NOTES_DIR/diary/".strftime("%F").".md"
            call InsertDiaryHeader()
        endif
    endfunction
]],
  false
)
```

### Funkcja Kolory

```lua
-- Lista tematów kolorystycznych FZF
api.nvim_exec(
  [[
        function! Kolory()
            let kolory = ['ayu', 'nightfox', 'nordfox', 'palefox', 'dayfox', 'dawnfox', 'duskfox',
                \ 'everforest', 'gruvbox-material', 'one', 'srcery', 'base16-atelier-savanna',
                \ 'base16-atlas', 'base16-darktooth', 'base16-eighties', 'base16-material',
                \ 'base16-solarized-light']
            call fzf#run(fzf#wrap({'source': kolory, 'sink' : 'colorscheme'}))
        endfunction
    ]],
  false
)
```

### Funkcja search_notes_dir

Za pomocą pluginu `Telescope` możemy przeszukiwać katalog `$NOTES_DIR`

Funkcja jest wywoływana za pomocą skrótu `<leader>ee`

```lua
-- Wyszukiwanie telescope w katalogu $NOTES_DIR
search_notes_dir = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end
```

### Funkcja grep_notes_dir

```lua
-- Przeszukiwanie telescope w katalogu $NOTES_DIR
grep_notes_dir = function()
  require("telescope.builtin").live_grep({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end
```

### Funkcja search_dotfiles

```lua
-- Wyszukiwanie telescope w katalogu dotfiles
search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< dot.files >",
    cwd = "$HOME/git/github/dotfiles/",
  })
end
```

### Funkcja search_nvim_dotfiles

```lua
-- Wyszukiwanie telescope w katalogu dotfiles
search_nvim_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< nvim >",
    cwd = "$HOME/.config/nvim/",
    file_ignore_patterns = { "spell/" },
  })
end
```

### Funkcja Time

```lua
-- Funkcja Time() wyświetla bieżącą datę i godzinę w formacie 2021-11-23, wtorek 20:53:27
api.nvim_exec(
  [[
    function! Time()
        echom strftime("- Teraz jest: %F, %A %T -")
    endfunction
]],
  false
)
```

### Funkcja UpdateVimrc

Przechodzi do pierwszej linii pliku i zmienia datę aktualizacji pliku

```lua
-- Aktualizacja 2021-11-28 16:25:50
```

```lua
-- Funkcja UpdateVimrc() uruchamiana po zapisaniu pliku $MYVIMRC
api.nvim_exec(
  [[
    function! UpdateVimrc()
        normal! ma1G0D
        normal! I-- Aktualizacja
        execute ':r!date +"\%F \%T"'
        normal! kJ
        normal! `a
    endfunction
]],
  false
)
```

### Funkcja GP

```lua
-- Przechodzi do katalogu edytowanego pliku i uruchamia skrypt ~/bin/gp
api.nvim_exec(
  [[
    function! GP()
        silent !cd $(dirname $(readlink -m %)) && ~/bin/gp
        redraw!
    endfunction
]],
  false
)
```

### Funkcja GA

```lua
-- Przechodzi do katalogu edytowanego pliku i uruchamia skrypt ~/bin/ga
api.nvim_exec(
  [[
    function! GA()
        silent !cd $(dirname $(readlink -m %)) && ~/bin/ga
        redraw!
    endfunction
    ]],
  false
)
```

### Funkcja RevBackground

```lua
-- Odwraca kolor tła
api.nvim_exec(
  [[
    function! RevBackground()
        if &background=="light"
            set background=dark
        else
            set background=light
        endif
    endfunction
]],
  false
)
```

### Funkcja DestractionFree

```lua
-- Funkcja DestractionFree()
api.nvim_exec(
  [[
    let g:DestractionFree=""
    let g:List=""
    function! DestractionFree()
        if g:DestractionFree == "" || g:DestractionFree == 0
            let g:DestractionFree=1
            set nonumber
            set norelativenumber
            set nocursorline
            set colorcolumn=
            set signcolumn=no
            set foldcolumn=0
            execute 'IndentBlanklineDisable'
        elseif g:DestractionFree == 1
            let g:DestractionFree=0
            set number
            set relativenumber
            set cursorline
            set colorcolumn=+1
            set signcolumn=yes
            set foldcolumn=1
            execute 'IndentBlanklineEnable'
        endif

        if &list || g:List == 1
            let g:List=1
        else
            let g:List=0
        endif

        if g:List == 1
            set list!
        endif
endfunction
]],
  false
)
```

### Funkcja VimrcVersion

```lua
function VimrcVersion()
  print(vimrc_version)
end
```
