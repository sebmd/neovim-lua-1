# Notatki

<!-- vim-markdown-toc Marked -->

* [Komendy i skróty klawiszowe](#komendy-i-skróty-klawiszowe)
    * [Formatowanie tekstu](#formatowanie-tekstu)
    * [Przeniesienie bieżącej linii lub zaznaczenia do pliku](#przeniesienie-bieżącej-linii-lub-zaznaczenia-do-pliku)
    * [Edycja wybranych plików](#edycja-wybranych-plików)
    * [Dodaje nowy plik dziennika](#dodaje-nowy-plik-dziennika)
    * [Komenda InsertDiaryHeader](#komenda-insertdiaryheader)
    * [Przeszukiwanie i wyszukiwanie](#przeszukiwanie-i-wyszukiwanie)
    * [Tryb zen-mode](#tryb-zen-mode)
* [Tworzenie spisu treści](#tworzenie-spisu-treści)
* [Pluginy](#pluginy)

<!-- vim-markdown-toc -->

Notatkami można zarządzać samodzielnie, ale można sobie nieco pomóc za pomocą odpowiedniej
konfiguracji i dodaniu pluginów. Konfiguracja jest przygotowana do tworzenia notatek w formacie
Markdown.

Standardowym katalogiem dla notatek jest `~/Notes`, Neovim pobiera katalog z notatkami ze zmiennej
`NOTES_DIR`, która znajduje się w pliku `~/.config/vars`. Ten natomiast jest wczytywany z pliku
`~/.bashrc` za pomocą prostej funkcji.

```bash
[ -f "$HOME/.config/vars" ] && . "$HOME/.config/vars"
```

Katalog `NOTES_DIR` zawiera kilka plików, są to:

- `$NOTES_DIR/inbox.md`
- `$NOTES_DIR/done.md`
- `$NOTES_DIR/notatki.md`

Dodatkowo istnieje katalog `$NOTES_DIR/diary` w którym są umieszczane notatki codzienne.

Format nazwy pliku `YYYY-MM-DD.md`

## Komendy i skróty klawiszowe

- [Podstawowe skróty klawiszowe](Skróty.md)

### Formatowanie tekstu

- `<leader>a`

### Przeniesienie bieżącej linii lub zaznaczenia do pliku

Skróty pozwalające przenoszenie linii lub zaznaczenia do jednego z trzech plików.

- `<leader>si` przenosi do pliku `$NOTES_DIR/inbox.md`
- `<leader>sd` przenosi do pliku `$NOTES_DIR/done.md`
- `<leader>sn` przenosi do pliku `$NOTES_DIR/notatki.md`

### Edycja wybranych plików

- `<leader>ei` otwiera plik `$NOTES_DIR/inbox.md`
- `<leader>ed` otwiera plik `$NOTES_DIR/done.md`
- `<leader>en` otwiera plik `$NOTES_DIR/notatki.md`

### Dodaje nowy plik dziennika

Funkcja DiaryNotes() otwiera plik dziennika do edycji wstawiając nagłówek za pomocą funkcji
InsertDiaryHeader

- `<leader>ej` wywołuje funkcję `DiaryNotes`

$NOTES_DIR/diary/YYYY-MM-DD.md

### Komenda InsertDiaryHeader

Komenda `InsertDiaryHeader` jest wykorzystywana przez funkcję `DiaryNotes`, ale może też być
wykorzystywana w dowolnym miejscu w pliku, komenda wstawia w bieżącej linii nagłówek pierwszego
stopnia Markdown `#` oraz bieżącą date i godzinę, po czym ustawia kursor za znakiem `#`.

Przykład:

```
# | 2021-11-28 16:18:16
```

### Przeszukiwanie i wyszukiwanie

- `<leader>ee` wyszukuje pliki w katalogu notatek za pmocą funkcji `search_notes_dir()`
- `<leader>er` przeszukuje notatki za pomocą funkcji `grep_notes_dir()`

### Tryb zen-mode

- zen-mode `<leader>ze`
- komenda `:DestractionFree`

Różnica pomiędzy zen-mode a DestractionFree jest taka, że podczas pracy w trybie Zen-mode nie możemy
korzystać z menadżera plików.

## Tworzenie spisu treści

Komenda `:GenTocMarked`

## Pluginy

- zen-mode
- TOC
- vim-gnupg - szyfrowanie plików
- vim-table-mode - automatyczne formatowanie tabelek

Pluginy do zarządzania notatkami

- [VimWiki](VimWiki.md)
- vim-dotoo
- neuron

Automatyczny podgląd plików Markdown w przeglądarce WWW

- coc + markdown-preview
- instant-preview
