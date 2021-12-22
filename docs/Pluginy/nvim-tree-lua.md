# nvim-tree.lua

Menadżer plików

- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)

```lua
use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
```

## Skróty klawiszowe

- https://github.com/kyazdani42/nvim-tree.lua#keybindings

| skrót        | opis                                                                                 |
| ------------ | ------------------------------------------------------------------------------------ |
| `<cr>` / `o` | Przechodzi do katalogu wyżej jeśli naciśniemy skrót na `..`                          |
| `<cr>` / `o` | Rozwija / zwija zawartość katalogu                                                   |
| `<cr>` / `o` | Otwiera plik pod kursorem                                                            |
| `<C-]>`      | Wchodzi do katalogu pod kursorem                                                     |
| `-`          | Przechodzi do katalogu wyżej                                                         |
| `<BS>`       | Zamyka otwarty katalog                                                               |
| `a`          | Dodaje nowy plik jeśli zakończymy nazwę znakiem `/` to zostanie utworzony katalog    |
| `r`          | Zmienia nazwę pliku lub katalogu                                                     |
| `<C-r>`      | Zmienia nazwę pliku lub katalogu nie podpowiadając jego obecnej nazwy                |
| `x`          | Zaznacza / odznacza plik lub katalog do wycięcia                                     |
| `c`          | Zaznacza / odznacza plik lub katalog do skopiowania                                  |
| `y`          | Kopiuje nazwę pliku pod kursorem do schowka systemowego                              |
| `Y`          | Kopiuje relatywną ścieżkę do schowka systemowego                                     |
| `gy`         | Kopiuje pełną ścieżkę pliku do schowka systemowego                                   |
| `p`          | Wkleja wcześniej zaznaczony plik do skopiowania lub wycięcia                         |
| `d`          | Usuwa plik - wymaga potwierdzenia                                                    |
| `D`          | Przenosi plik do kosza - wymaga dodatkowej konfiguracji                              |
| `]c`         | Przechodzi do kolejnego pliku w repozytorium git, który w jakiś sposób go zmienił    |
| `[c`         | Przechodzi do poprzedniego pliku w repozytorium git, który w jakiś sposób go zmienił |
| `s`          | Otwiera plik za pomocą standardowego programu skojarzonego z typem pliku             |
| `<C-v>`      | Otwiera plik w podziale pionowym                                                     |
| `<C-x>`      | Otwiera plik w podziale poziomym                                                     |
| `<C-t>`      | Otwiera plik w nowej zakładce                                                        |
| `<Tab>`      | Otwiera plik jako podgląd pozostając w menadżerze plików                             |
| `I`          | Chowa / pokazuje ukryte pliki i katalogi                                             |
| `H`          | Chowa / pokazuje pliki konfiguracyjne zaczynające się od znaku `.`                   |
| `R`          | Odświeża listę plików                                                                |

Za pomocą skrótu `a` możemy dodawać kilka plików lub katalogów jednocześnie np. `foo/bar/baz/f`
utworzy katalog `foo/bar/baz/` a w nim plik `f`

- Lewy klawisz myszki zachowuj się jak skrót `<cr>`
- Prawy klawisz myszki zachowuje się jak skrót `<C-]>`
