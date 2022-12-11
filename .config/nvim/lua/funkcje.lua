-- Funkcje

local api = vim.api
local fn = vim.fn

-- Zapisuje plik Write()
api.nvim_exec(
  [[
    function! Write()
        " wywołuje funkcję UpdateVimrc
        " autocmd! BufWritePost $MYVIMRC call UpdateVimrc() | source % | redraw
        autocmd! BufWrite $MYVIMRC call UpdateVimrc()
        if filereadable(expand("%"))
            for buf in getbufinfo("%")
                if buf.changed
                    execute ':silent update'
                    echo "Zapisałem" expand("%:p")
                else
                    echo "Brak zmian w" expand("%:p")
                endif
            endfor
        else
            execute ':lua MkDir()'
            execute ':silent write'
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
-- wstawia: # 2022-12-11 03:31:01
function date_header()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. "# " .. os.date("%Y-%m-%d %H:%M:%S") .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
  vim.api.nvim_feedkeys("o", "n", true)
end

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

-- przenosi linię do podanego pliku w argumencie
send_line_to_file = function(plik)
  vim.cmd("d")
  -- vim.cmd("cd $NOTES_DIR")
  rejestr = fn.getreg("@", 1, 1)
  fn.writefile(rejestr, plik, "a")
  vim.cmd("cd %:p:h")
end

-- kopiuje linię do podanego pliku w argumencie
copy_line_to_file = function(plik)
  vim.cmd("y")
  -- vim.cmd("cd $NOTES_DIR")
  fn.writefile(fn.getreg("@", 1, 1), plik, "a")
  vim.cmd("cd %:p:h")
end

-- kopiowanie zaznaczenia nie działa nawet po dodaniu '<,'>y

-- kopiuje linię do podanego pliku w argumencie
copy_v_line_to_file = function(plik)
  -- vim.cmd("'<,'>y")
  vim.cmd("y")
  -- vim.cmd("cd $NOTES_DIR")
  fn.writefile(fn.getreg("@", 1, 1), plik, "a")
  vim.cmd("cd %:p:h")
end

-- Funkcja Time() wyświetla bieżącą datę i godzinę w formacie 2021-11-23, wtorek 20:53:27
Time = function()
  local czas = fn.strftime("%F, %A %T")
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
        silent execute ':!$HOME/bin/gp.sh %:p'
        redraw!
    endfunction
]],
  false
)

-- Przechodzi do katalogu edytowanego pliku i uruchamia skrypt ~/bin/ga.sh
api.nvim_exec(
  [[
    function! GA()
        silent execute ':!$HOME/bin/ga.sh $PWD'
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

-- Tworzy brakujące katalogi
MkDir = function()
  local dir = fn.expand("%:p:h")

  if fn.isdirectory(dir) == 0 then
    fn.mkdir(dir, "p")
  end
end

-- map("n", "<leader>bc", "<cmd>lua VimrcVersion()<cr>", { silent = false })
-- map("n", "<leader>bb", "<cmd>lua print(vimrc_version)<cr>", { silent = false })
