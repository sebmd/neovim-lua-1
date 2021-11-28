# nvim-tree.lua

Menadżer plików

- https://github.com/kyazdani42/nvim-tree.lua

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

- `<CR>` lub `o` na `..` przechodzi do katalogu wyżej
- `<CR>` otwiera katalog lub plik
- `<CR>` jeśli plik jest dowiązaniem symbolicznym przechodzi do właściwego pliku
- `<C-]>` przechodzi do katalogu pod kursorem
- `<BS>` zamyka katalog
- `a` tworzy nowy plik lub katalog, katalog tworzymy przez dodanie `/` na końcu. Można tworzyć całe drzewo katalogów np. qwerty/asdf/foo/bar.txt
- `r` zmiana nazwy pliku
- `<C-r>` zmiana nazwy pliku nie uzupełnia oryginalnej nazwy pliku
- `x` dodaje / usuwa plik lub katalog jako wycinany
- `c` dodaje / usuwa plik lub katalog jako kopiowany
- `y` kopiuje nazwę pliku do schowka systemowego
- `Y` kopiuje relatywną ścieżkę do schowka systemowego
- `gy` kopiuje pełną ścieżkę pliku do schowka systemowego
- `p` wkleja plik
- `d` usuwa plik, wymaga potwierdzenia
- `D` przenosi plik do kosza, wymaga dodatkowej konfiguracji
- `]c` przechodzi do następnego elementu repozytorium git np. zmodyfikowanego pliku
- `[c` przechodzi do wcześniejszego elementu repozytorium git np. zmodyfikowanego pliku
- `-` to navigate up to the parent directory of the current file/directory
- `s` to open a file with default system application or a folder with default file manager (if you want to change the command used to do it see :h nvim-tree.setup under system_open)
- `<C-v>` otwiera plik w podziale pionowym
- `<C-x>` otwiera plik w podziale poziomym
- `<C-t>` otwiera plik w nowej zakładce
- `<Tab>` otwiera plik, ale pozostaje w NvimTree co na wzór szybkiego podglądu
- `I` will toggle visibility of hidden folders / files
- `H` pokazuje / ukrywa plik zaczynające się od `.`, np. `.vimrc`, lub katalog `.config`
- `R` odświeża listę plików
- Double left click acts like `<CR>`
- Double right click acts like `<C-]>`
