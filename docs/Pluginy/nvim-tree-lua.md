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

- `<CR>` or `o` on `..` will cd in the above directory
- `<C-]>` przechodzi do katalogu pod kursorem
- `<BS>` will close current opened directory or parent
- `a` tworzy nowy plik lub katalog, katalog tworzymy przez dodanie `/` na końcu. Można tworzyć całe drzewo katalogów np. qwerty/asdf/foo/bar.txt
- `r` zmiana nazwy pliku
- `<C-r>` to rename a file and omit the filename on input
- `x` to add/remove file/directory to cut clipboard
- `c` to add/remove file/directory to copy clipboard
- `y` kopiuje nazwę pliku do schowka systemowego
- `Y` will copy relative path to system clipboard
- `gy` kopiuje pełną ścieżkę pliku do schowka systemowego
- `p` to paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
- `d` usuwa plik, wymaga potwierdzenia
- `D` to trash a file (configured in setup())
- `]c` to go to next git item
- `[c` to go to prev git item
- `-` to navigate up to the parent directory of the current file/directory
- `s` to open a file with default system application or a folder with default file manager (if you want to change the command used to do it see :h nvim-tree.setup under system_open)
- if the file is a directory, `<CR>` will open the directory otherwise it will open the file in the buffer near the tree
- if the file is a symlink, `<CR>` will follow the symlink (if the target is a file)
- `<C-v>` otwiera plik w podziale pionowym
- `<C-x>` otwiera plik w podziale poziomym
- `<C-t>` otwiera plik w nowej zakładce
- `<Tab>` otwiera plik, ale pozostaje w NvimTree co na wzór szybkiego podglądu
- `I` will toggle visibility of hidden folders / files
- `H` pokazuje / ukrywa plik zaczynające się od `.`, np. `.vimrc`, lub katalog `.config`
- `R` odświeża listę plików
- Double left click acts like `<CR>`
- Double right click acts like `<C-]>`
