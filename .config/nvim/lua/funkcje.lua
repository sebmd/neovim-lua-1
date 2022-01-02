-- Funkcje
-- Zapisuje plik Write()
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

-- Usuwa plik swap bieżącego pliku
api.nvim_exec(
  [[
" Usuwa pliki .swp
function! DeleteSwapFile()
    write
    let l:output = ''
    redir => l:output
    silent exec ':sw'
    redir END
    let l:current_swap_file = substitute(l:output, '\n', '', '')
    let l:base = substitute(l:current_swap_file, '\v\.\w+$', '', '')
    let l:swap_files = split(glob(l:base.'\.s*'))
    " delete all except the current swap file
    for l:swap_file in l:swap_files
        if !empty(glob(l:swap_file)) && l:swap_file != l:current_swap_file
            call delete(l:swap_file)
            echo "swap file removed: ".l:swap_file
        endif
    endfor
    " Reset swap file extension to `.swp`.
    set swf! | set swf!
    echo "Reset swap file extension for file: ".expand('%')
endfunction
]],
  false
)

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
-- Funkcja DiaryNotes() otwiera plik dziennika do edycji wstawiając nagłówek za pomocą funkcji
-- InsertDiaryHeader
api.nvim_exec(
  [[
    " funkcję uruchamia skrót <leader>e
    function! DiaryNotes()
        if filereadable(expand("$NOTES_DIR/diary/".strftime("%F").".md"))
            execute ":e "(expand("$NOTES_DIR/diary/".strftime("%F").".md"))""
        else
            execute ":e "(expand("$NOTES_DIR/diary/".strftime("%F").".md"))""
            call InsertDiaryHeader()
        endif
    endfunction
]],
  false
)

-- Lista tematów kolorystycznych FZF
api.nvim_exec(
  [[
        function! Kolory()
        	let kolory = readfile(expand('$HOME/.config/nvim/kolory'))
        	call fzf#run(fzf#wrap({'source': kolory, 'sink' : 'colorscheme'}))
        endfunction
    ]],
  false
)

-- Wyszukiwanie plików w bieżącej lokalizacji
Find_Files = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Wyszukiwanie >",
    find_command = { "rg", "--files", "--hidden", "--follow", "-g", "!.git" },
  })
end

-- Wyszukiwanie telescope w katalogu $NOTES_DIR
search_notes_dir = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end

-- Przeszukiwanie telescope w katalogu $NOTES_DIR
grep_notes_dir = function()
  require("telescope.builtin").live_grep({
    prompt_title = "< Notatki >",
    cwd = "$NOTES_DIR",
  })
end

-- Wyszukiwanie telescope w katalogu dotfiles
search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< dot.files >",
    cwd = "$HOME/git/github/dotfiles/",
    find_command = { "rg", "--files", "--hidden", "--follow", "-g", "!.git" },
  })
end

-- Wyszukiwanie plików w katalogu dokumentacji
search_docs = function()
  require("telescope.builtin").find_files({
    prompt_title = "< docs >",
    cwd = "$HOME/.config/nvim/docs/",
    find_command = { "rg", "--files", "--follow" },
  })
end

-- Wyszukiwanie plików konfiguracyjnych Neovim w katalogu $HOME/.config/nvim
search_nvim_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< nvim >",
    cwd = "$HOME/.config/nvim/",
    find_command = { "rg", "--files", "--follow" },
    file_ignore_patterns = { "spell/", ".md" },
  })
end

-- Funkcja Time() wyświetla bieżącą datę i godzinę w formacie 2021-11-23, wtorek 20:53:27
function Time()
  local czas = vim.fn.strftime("%F, %A %T")
  print("- Teraz jest: " .. czas .. " -")
end

-- Funkcja UpdateVimrc() uruchamiana po zapisaniu pliku $MYVIMRC
api.nvim_exec(
  [[
    function! UpdateVimrc()
        normal! ma1G0"_D
        normal! I-- Aktualizacja
        execute ':r!date +"\%F \%T"'
        normal! kJ
        normal! `a
    endfunction
]],
  false
)

-- Przechodzi do katalogu edytowanego pliku i uruchamia skrypt ~/bin/gp.sh
api.nvim_exec(
  [[
    function! GP()
        " silent !cd $(dirname $(readlink -m %)) && ~/bin/gp.sh
	" execute ':!$HOME/bin/gp.sh $PWD'
        silent execute ':!$HOME/bin/gp.sh $PWD'
        redraw!
    endfunction
]],
  false
)

-- Przechodzi do katalogu edytowanego pliku i uruchamia skrypt ~/bin/ga.sh
api.nvim_exec(
  [[
    function! GA()
        silent !cd $(dirname $(readlink -m %)) && ~/bin/ga.sh
        redraw!
    endfunction
    ]],
  false
)

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

function VimrcVersion()
  print("Wersja: " .. vimrc_version)
end

-- map("n", "<leader>bc", "<cmd>lua VimrcVersion()<cr>", { silent = false })
-- map("n", "<leader>bb", "<cmd>lua print(vimrc_version)<cr>", { silent = false })
