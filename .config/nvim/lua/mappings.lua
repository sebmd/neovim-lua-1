-- mappings.lua
-- Funkcja map
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Ustawia SPACE jako klawisz LEADER
g.mapleader = " "

-- Wyjście z trybu INSERT
map("i", "kj", "<esc>")
-- map("i", "jk", "<esc>")

-- Wejście do trybu COMMAND w trybie NORMAL i VISUAL
map("n", "<leader>;", ":", { silent = false })
map("v", "<leader>;", ":", { silent = false })

-- Uruchomienie podręczniej pomocy LEADER ?
map("n", "<leader>?", "<cmd>Cheatsheet<cr>")

-- Otwiera nowy plik
map("n", "<leader>c", "<cmd>enew<cr>")

-- Uruchamia Dashboard
map("n", "<leader>D", "<cmd>Dashboard<cr>")

-- Zapisanie pliku
map("n", "<leader>w", "<cmd>Write<cr>")

-- Zapisanie i wyjście
map("n", "<leader>x", "<cmd>Write<cr><cmd>q<cr>")

-- Wyjście
map("n", "<leader>q", "<cmd>q<cr>")

-- wyjście bez zapisania
map("n", "qq", ":q<cr>")

map("n", "<left>", ':echom "Użyj klawisza h"<cr>h')
map("n", "<down>", ':echom "Użyj klawisza j"<cr>j')
map("n", "<up>", ':echom "Użyj klawisza k"<cr>k')
map("n", "<right>", ':echom "Użyj klawisza l"<cr>l')

-- poruszanie się pomiędzy zmianami w pliku
map("n", "g;", "g;zvzz")
map("n", "g,", "g,zvzz")

-- poruszanie się pomiędzy paragrafami
map("n", "}", "}zvzz")
map("n", "{", "{zvzz")

-- tab w trybie VISUAL pozostaje w trybie VISUAL
map("v", "<", "<gv")
map("v", ">", ">gv")

-- poruszanie się w trybie COMMAND
map("c", "<c-j>", "<down>")
map("c", "<c-k>", "<up>")
map("c", "<c-h>", "<left>")
map("c", "<c-l>", "<right>")

-- poruszanie się w trybie INSERT za pomocą skrótów <c-h,j,k,l>
map("i", "<c-h>", "<left>")
map("i", "<c-j>", "<down>")
map("i", "<c-k>", "<up>")
map("i", "<c-l>", "<right>")

-- poruszanie się pomiędzy oknami za pomocą <c-h,j,k,l>
map("n", "<c-h>", "<c-w><c-h>")
map("n", "<c-j>", "<c-w><c-j>")
map("n", "<c-k>", "<c-w><c-k>")
map("n", "<c-l>", "<c-w><c-l>")

-- zmiana wielkości okna
map("n", "<m-h>", "<cmd>vertical resize -2<cr>")
map("n", "<m-j>", "<cmd>resize +2<cr>")
map("n", "<m-k>", "<cmd>resize -2<cr>")
map("n", "<m-l>", "<cmd>vertical resize +2<cr>")

-- Przesuwanie linii alt+j i alt+k
-- map("n", "<m-j>", "<cmd>m .+1<CR>", { silent = true })
-- map("n", "<m-k>", "<cmd>m .-2<CR>", { silent = true })
-- map("i", "<m-j> <Esc>", "<cmd>m .+1<CR>==gi", { silent = true })
-- map("i", "<m-k> <Esc>", "<cmd>m .-2<CR>==gi", { silent = true })
-- map("v", "<m-j>", "<cmd>m +1<CR>gv=gv", { silent = true })
-- map("v", "<m-k>", "<cmd>m -2<CR>gv=gv", { silent = true })

-- podział okna pionowy i poziomy
map("n", "<leader>vs", "<cmd>vs<cr>")
map("n", "<leader>sp", "<cmd>sp<cr>")

-- poruszanie się w długiej zawiniętej linii
map("n", "j", "gj")
map("n", "k", "gk")

-- Standardowo `gf` przechodzi do otwartego pliku, to mapowanie tworzy nieistniejący plik i otwiera
-- go w bieżącym buforze
map("n", "gf", "<cmd>edit <cfile><cr>")

-- uruchamia przeglądarkę na linku pod kursorem używając przeglądarki zdefiniowanej w zmiennej
-- BROWSER
map("n", "gx", "<cmd>silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<cr>")

-- Wkleja do linii komend lub wyszukiwania skopiowany tekst z bufora za pomocą <c-r>p
api.nvim_exec(
  [[
    cmap <c-r>p <c-r>"
]],
  false
)

-- Ustawienia skrótów klawiszowych dla plików pomocy
api.nvim_exec(
  [[
    autocmd Filetype help nnoremap <c-n> :cnext<cr>
    autocmd Filetype help nnoremap <c-p> :cprevious<cr>
    autocmd Filetype help nnoremap <leader>l <c-]>
    autocmd Filetype help nnoremap <leader>h <c-t>
    autocmd Filetype help nnoremap q :quit<cr>
]],
  false
)

-- Klawisz `K` w plikach lua wywołuje pomoc dla wyrazu pod kursorem
api.nvim_exec(
  [[
    autocmd Filetype lua nnoremap K viwy:help <c-r>"<cr>
    ]],
  false
)

--
-- Klawisz `K` w plikach sh wywołuje pomoc dla wyrazu pod kursorem
api.nvim_exec(
  [[
    autocmd Filetype sh nnoremap K viwy:Man <c-r>"<cr>
    ]],
  false
)
-- zmiana kolorów F8, Shift-F8, Ctrl-F8, F9
map("n", "<f8>", ":NextColorScheme<cr>") -- f8
map("n", "<f20>", ":PrevColorScheme<cr>") -- shift f8
map("n", "<f32>", ":RandomColorScheme<cr>") -- ctrl f8
map("n", "<f9>", ":BlacklistAddColorScheme<cr>") -- f9
map("n", "<f21>", ":colo<cr>") -- shift f9

-- plugin auto-session
-- map("n", "<leader>ss", "<cmd>SaveSession<cr>")
-- map("n", "<leader>sl", "<cmd>RestoreSession<cr>")

-- Dashboard
map("n", "<f2>", ":<C-u>SessionSave<CR>")
map("n", "<f3>", ":<C-u>SessionLoad<CR>")

-- przeniesienie bieżącej linii do pliku
map("n", "<leader>si", ":d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'inbox.md', 'a')<cr>:cd %:p:h<cr>")
map("n", "<leader>sd", ":d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>")
map("n", "<leader>sn", ":d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>")

-- przeniesienie zaznaczenia do pliku
map("v", "<leader>si", ":d<cr>:cd $NOTES_DIR/<cr>:call writefile(getreg('@', 1, 1), 'inbox.md', 'a')<cr>:cd %:p:h<cr>")
map("v", "<leader>sd", ":d<cr>:cd $NOTES_DIR/<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>")
map(
  "v",
  "<leader>sn",
  ":d<cr>:cd $NOTES_DIR/<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>"
)

-- edycja wybranych plików
map("n", "<leader>ei", ":e $NOTES_DIR/inbox.md<cr>")
map("n", "<leader>ed", ":e $NOTES_DIR/done.md<cr>")
map("n", "<leader>en", ":e $NOTES_DIR/notatki.md<cr>")

-- dodaje nowy plik dziennika
map("n", "<leader>ej", ":DiaryNotes<cr>")

map("n", "<leader>ee", "<cmd>lua search_notes_dir()<cr>")

map("n", "<leader>er", "<cmd>lua grep_notes_dir()<cr>")

-- usuwa zaznaczony tekst a następnie wkleja tekst ze schowka
map("v", "<leader>p", '"_dP')

-- ustawia podzielone okno na główne (full screen)
map("n", "<leader>o", ':only<cr>:echom "There Can Be Only One"<cr>"')

-- Obsługa pluginu vim-surround
-- <leader>sw czeka na wprowadzenie znaku, którym otoczy wyraz
-- <leader>sW czeka na wprowadzenie znaku, którym otoczy WYRAZ
-- <leader>sp czeka na wprowadzenie znaku, który otoczy paragraf
-- <leader>ss czeka na wprowadzenie znaku, którym otoczy linię
-- <leader>sd czeka na wprowadzenie znaku, którym zostanie usunięty
map("n", "<leader>sw", ":norm ysiw")
map("n", "<leader>sW", ":norm ysiW")
map("n", "<leader>ssp", ":norm ysip")
map("n", "<leader>ss", ":norm yss")
map("n", "<leader>sdd", ":norm ds")

-- map("n", "<Enter>", "o<Esc>")
-- map("n", "<space>", "i<space><C-c>l")

map("n", "<c-n>", '<cmd>lua require"gitsigns.actions".next_hunk()<CR>zv')
map("n", "<c-p>", '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>zv')
map("n", "gj", '<cmd>lua require"gitsigns.actions".next_hunk()<CR>zv')
map("n", "gk", '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>zv')

-- przemapowanie klawiszy otwierających i zamykających zagnieżdżenia
map("n", "zn", "zm")
map("n", "zm", "zn")

-- przejście na początek / koniec linii
map("n", "gh", "0")
map("n", "gl", "$")
map("v", "gh", "0")
map("v", "gl", "$")

-- usuwa od kursora do początku / końca linii
map("n", "dh", "xd0")
map("n", "dl", "d$")

-- usuwa od kursora do pierwszej spacji
map("n", "d<space>", "df<space>")

-- poprzedni / następny bufor
map("n", "<leader>,", "<cmd>bprevious<cr>")
map("n", "<leader>.", "<cmd>bnext<cr>")

-- przechodzi pomiędzy dwoma ostatimi buforami
map("n", "<Tab>", "<cmd>e #<CR>")

-- usuwa bufor
map("n", "<leader>d", "<cmd>bdelete<cr>")

-- Tab to switch buffers in Normal mode
-- map("n", "<Tab>", "<cmd>bnext<CR>")
-- map("n", "<S-Tab>", "<cmd>bprevious<CR>")

-- Usuwa obiekt tekstowy nie kopiując go do standardowego rejestru
-- map("n", "<leader>d", '"-d')

-- wkleja ostatnio skopiowany tekst ale nie usunięty, ustawiony jako ,p i ,P
-- map("n", "p", '"0p')
-- map("n", "P", '"0P')
map("n", ",p", '"0p')
map("n", ",P", '"0P')
-- wkleja ostatnio usunięty tekst
-- map("n", "<leader>p", "p")
-- map("n", "<leader>P", "P")

-- map("n", "<leader>th", ":nohl<cr>", { silent = true })
map("n", "<leader>u", ":UndotreeToggle<cr>")

-- Wyszukiwanie plików w ~/.config/nvim
map("n", "<leader>v", "<cmd>lua search_nvim_dotfiles()<cr>")

-- przeładowuje konfigurację $MYVIMRC
map("n", "<leader>sv", ":luafile $MYVIMRC<cr>")

-- uruchamia skrypt (bieżący plik)
map("n", "<leader>sr", ":!./%<cr>")

-- przeładowuje konfigurajce otwartego pliku
map("n", "<leader>sf", ":luafile %<cr>")

-- Mendadżer plików NvimTree
map("n", "<leader>n", "<cmd>NvimTreeToggle<cr>")

-- Menadzęr plików CHADtree
-- map("n", "<leader>n", "<cmd>CHADopen<cr>")

-- Zaznacza cały plik, dodatkowo tworzy znacznik na bieżącej pozycji, `z wraca na miejsce znacznika
map("n", "<leader>sa", "mzggVG<c-$>")

-- Make visual yanks place the cursor back where started
map("v", "y", "ygv<Esc>")

-- Mapowanie znaczników (undo) w trybie INSERT po wprowadzeniu jednego ze znaków , . ! ? ; :
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", "!", "!<c-g>u")
map("i", "?", "?<c-g>u")
map("i", ";", ";<c-g>u")
map("i", ":", ":<c-g>u")

-- `mm` - tworzy znacznik; `mM` - wraca na miejsce znacznika
map("n", "mm", "mm") -- tego oczywiście nie trzeba dodatkowo mapować
map("n", "mM", "`m")

-- Przechodzi do kolejnej / poprzedniej szukanej pozycji, dodatkowo wyśrodkowuje ekran i otwiera zagnieżdżenia
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- łączy linie pozostawiając kursor w obecnej pozycji
map("n", "J", "mzJ`z")

-- kopiuje tekst od kursora do końca linii od wersji 0.6 jest to standardowe zachowanie
map("n", "Y", "y$")

-- kopiuje cały plik
map("n", "ya", "ggVGy")

-- kopiuje linie z pominięciem pierwszego wyrazu / znaku bez znaku końca linii
map("n", "yh", "0f lv$hy")

-- wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długośc 'textwidth' znaków 'gqap'
map("n", "<leader>a", "=ip gqap")

-- Łatwiejsza inkrementacja i dekremenatacja liczb
map("n", "+", "<C-a>", { silent = true })
map("v", "+", "<C-a>", { silent = true })
map("n", "-", "<C-x>", { silent = true })
map("v", "-", "<C-x>", { silent = true })

-- Automatyczne zamykanie tagów
map("i", ",/", "</<C-X><C-O>")

-- ESC wyłącza wyróżnianie szukanego słowa
map("n", "<esc>", ":noh<cr><esc>", { silent = true })

-- Telescoope
map("n", "<leader>r", '<cmd>lua require("telescope.builtin").registers()<cr>')
map(
  "n",
  "<leader>g",
  '<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))<cr>'
)
map("n", "<leader>zx", '<cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<CR>')
-- map("n", "<leader>b", '<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>')
map("n", "<leader>b", "<cmd>FzfLua buffers<cr>")
map("n", "<leader>j", '<cmd>lua require("telescope.builtin").help_tags()<cr>')
map(
  "n",
  "<leader>f",
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '--follow', '-g', '!.git' }})<cr>",
  default_opts
)
map("n", "<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
map(
  "n",
  "<leader>i",
  '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_dropdown({}))<cr>'
)
map("n", "<leader>ta", '<cmd>lua require("telescope.builtin").tags(require("telescope.themes").get_dropdown({}))<cr>')

map("n", "<leader>p", ":Telescope project<cr>")

map("n", "<leader>sy", '<cmd>lua require("telescope.builtin").symbols{ sources = {"emoji", "gitmoji"} }<cr>')
-- map("n", "<leader>sy", "<cmd>Telescope emoji<cr>")

-- historia komend :
map("n", "q:", "<nop>")
map("n", "q:", ":Telescope command_history<cr>")
map("n", "<leader>hc", ":Telescope command_history<cr>")

-- lista zmapowanych klawiszy
map("n", "<leader>m", ":Telescope keymaps<cr>")

-- historia wyszukiwania
map("n", "<leader>sh", ":Telescope search_history<cr>")

-- Uruchomienie terminala w podziale poziomym
-- <c-\><c-n> przechodzi w tryb NORMAL w oknie terminala, dzięki czemu można zaznaczać tekst w
-- terminalu a także poruszać się pomiędzy terminalem a oknem bufora
-- map("n", "<leader>t", "<cmd>split term://$SHELL<cr>")
-- map("n", "<leader>tt", "<cmd>split term://$SHELL<cr>")
map("n", "<leader>t", "<cmd>ToggleTerm direction=vertical size=60<cr>")

-- wyszukiwanie plików w katalogu dotfiles
map("n", "<leader>zz", "<cmd>lua search_dotfiles()<cr>")

-- uruchamia tryb ZenMode
map("n", "<leader>ze", "<cmd>ZenMode<cr>")

-- plugin kommentary
api.nvim_set_keymap("n", "<c-_>", "<Plug>kommentary_line_default", {})
api.nvim_set_keymap("x", "<c-_>", "<Plug>kommentary_visual_default", {})

-- plugin vim-vsnip
cmd([[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']])
cmd([[smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']])
cmd([[imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']])
cmd([[smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']])
