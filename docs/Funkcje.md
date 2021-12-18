# Funkcje

## Funkcja Write

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

## Funkcja CD

Otwiera menadżer plików w wybranym katalogu, zawartym w pliku `$HOME/.config/bmproj`

Wywołanie funkcji za pomocą komendy `CD`

```lua
-- Otwiera menadżer plików w wybranym katalogu, zawartym w pliku `$HOME/.config/bmproj`
api.nvim_exec(
  [[
    function! CD()
        let bmproj = readfile(expand('$HOME/.config/bmproj'))
        call fzf#run(fzf#wrap({'source': bmproj,
            \ 'sink' : 'e',
            \ 'options' : '-m -x +s'}))
    endfunction
]],
  false
)
```

## Funkcja InsertDiaryHeader

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

## Funkcja DiaryNotes

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

## Funkcja Kolory

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

## Funkcja Find_Files

Funkcja Find_Files wyszukuje pliki w bieżącej lokalizacji za pomocą polecenia `rg`

```lua
-- Wyszukiwanie plików w bieżącej lokalizacji
Find_Files = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Wyszukiwanie >",
    find_command = { "rg", "--files", "--hidden", "--follow", "-g", "!.git" },
  })
end
```

## Funkcja search_notes_dir

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

## Funkcja grep_notes_dir

```lua
-- Przeszukiwanie telescope w katalogu $NOTES_DIR
grep_notes_dir = function()
  require("telescope.builtin").live_grep({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end
```

## Funkcja search_dotfiles

```lua
-- Wyszukiwanie telescope w katalogu dotfiles
search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< dot.files >",
    cwd = "$HOME/git/github/dotfiles/",
    find_command = { "rg", "--files", "--hidden", "--follow", "-g", "!.git" },
  })
end
```

## Funkcja search_docs

```lua
-- Wyszukiwanie plików w katalogu dokumentacji
search_docs = function()
    require("telescope.builtin").find_files({
        prompt_title = "< docs >",
        cwd = "$HOME/.config/nvim/docs/",
        find_command = { "rg", "--files", "--follow" },
    })
end
```

## Funkcja search_nvim_dotfiles

```lua
-- Wyszukiwanie plików konfiguracyjnych Neovim w katalogu $HOME/.config/nvim
search_nvim_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< nvim >",
    cwd = "$HOME/.config/nvim/",
    find_command = { "rg", "--files", "--follow" },
    file_ignore_patterns = { "spell/", ".md" },
  })
end
```

## Funkcja Time

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

## Funkcja UpdateVimrc

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

## Funkcja GP

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

## Funkcja GA

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

## Funkcja RevBackground

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

## Funkcja DestractionFree

Alternatywa dla pluginu Goyo

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

## Funkcja VimrcVersion

```lua
function VimrcVersion()
  print(vimrc_version)
end
```
