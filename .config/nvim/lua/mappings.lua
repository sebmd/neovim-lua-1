-- mappings.lua
-- Aliasy
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g -- a table to access global variables
local api = vim.api

-- importuje lua/keymap/init.lua ("ThePrimagen")
local Remap = require("keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local cmap = Remap.cmap
local tmap = Remap.tmap
local nmap = Remap.nmap

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
inoremap("kj", "<esc>")
-- inoremap("jk", "<esc>")

-- ESC wyłącza wyróżnianie szukanego słowa
nnoremap("<esc>", ":noh<cr><esc>", { silent = true })

-- Wejście do trybu COMMAND w trybie NORMAL i VISUAL
nnoremap("<leader>;", ":", { silent = false })
xnoremap("<leader>;", ":", { silent = false })

-- Uruchomienie podręczniej pomocy LEADER ?
nnoremap("<leader>?", "<cmd>Cheatsheet<cr>")

-- Otwiera pusty bufor
nnoremap("<leader>C", "<cmd>enew<cr>")

-- Przechodzenie pomiędzy katalogami z użyciem funkcji CD
nnoremap("<leader>c", "<cmd>CD<cr>")

-- Uruchamia Dashboard
nnoremap("<leader>D", "<cmd>Dashboard<cr>")

-- Zmiana kolorów
nnoremap("<leader>k", "<cmd>Kolory<cr>")

-- Zapisanie pliku
nnoremap("<leader>w", "<cmd>Write<cr>")

-- Zapisanie i wyjście
nnoremap("<leader>x", "<cmd>Write<cr><cmd>q<cr>")

-- Wyjście
nnoremap("<leader>q", "<cmd>q<cr>")

-- Wyjście
nnoremap("<leader>z", "<cmd>q!<cr>")

-- wyświetla ścieżkę do bieżącego pliku, obsługuje również linki symboliczne
-- nnoremap("<leader>l", '<cmd>echo resolve(expand("%:p"))<cr>')
nnoremap("<leader>l", "<cmd>call FileInfo()<cr>")

-- Wyjście bez zapisania
nnoremap("qq", ":qa<cr>")

-- Poruszanie się pomiędzy zmianami w pliku
nnoremap("g;", "g;zvzz")
nnoremap("g,", "g,zvzz")

-- Poruszanie się pomiędzy paragrafami
nnoremap("}", "}zvzz")
nnoremap("{", "{zvzz")

-- TAB w trybie VISUAL pozostaje w trybie VISUAL
xnoremap("<", "<gv")
xnoremap(">", ">gv")

-- Poruszanie się w trybie COMMAND
cmap("<c-j>", "<down>")
cmap("<c-k>", "<up>")
cmap("<c-h>", "<left>")
cmap("<c-l>", "<right>")

-- Poruszanie się w trybie INSERT za pomocą skrótów <c-h,j,k,l>
inoremap("<c-h>", "<left>")
inoremap("<c-j>", "<down>")
inoremap("<c-k>", "<up>")
inoremap("<c-l>", "<right>")

-- Poruszanie się pomiędzy oknami za pomocą <c-h,j,k,l>
nnoremap("<c-h>", "<c-w><c-h>")
nnoremap("<c-j>", "<c-w><c-j>")
nnoremap("<c-k>", "<c-w><c-k>")
nnoremap("<c-l>", "<c-w><c-l>")

-- Zmiana wielkości okna
nnoremap("<m-h>", "<cmd>vertical resize -2<cr>")
nnoremap("<m-j>", "<cmd>resize +2<cr>")
nnoremap("<m-k>", "<cmd>resize -2<cr>")
nnoremap("<m-l>", "<cmd>vertical resize +2<cr>")

-- Przesuwanie linii alt+j i alt+k
-- map("n", "<m-j>", "<cmd>m .+1<CR>", { silent = true })
-- map("n", "<m-k>", "<cmd>m .-2<CR>", { silent = true })
-- map("i", "<m-j> <Esc>", "<cmd>m .+1<CR>==gi", { silent = true })
-- map("i", "<m-k> <Esc>", "<cmd>m .-2<CR>==gi", { silent = true })
-- map("v", "<m-j>", "<cmd>m +1<CR>gv=gv", { silent = true })
-- map("v", "<m-k>", "<cmd>m -2<CR>gv=gv", { silent = true })

-- Podział okna pionowy i poziomy
nnoremap("<leader>vs", "<cmd>vs<cr>")
nnoremap("<leader>sp", "<cmd>sp<cr>")

-- Mapowanie dla terminala
-- map("t", "<esc>", "<c-\\><c-n>")
-- map("t", "jk", "<c-\\><c-n>")
--
tmap("<c-h>", "<c-\\><c-n><c-w>h")
tmap("<c-j>", "<c-\\><c-n><c-w>j")
tmap("<c-k>", "<c-\\><c-n><c-w>k")
tmap("<c-l>", "<c-\\><c-n><c-w>l")

-- Poruszanie się w długiej zawiniętej linii
nnoremap("j", "gj")
nnoremap("k", "gk")

-- Standardowo `gf` przechodzi do otwartego pliku, to mapowanie tworzy nieistniejący plik i otwiera
-- go w bieżącym buforze
nnoremap("gf", "<cmd>edit <cfile><cr>")

-- Uruchamia przeglądarkę na linku pod kursorem używając przeglądarki zdefiniowanej w zmiennej
-- BROWSER
nnoremap("gx", "<cmd>silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<cr>")

-- Dublowanie linii
nnoremap("tt", ":t.<cr>")

-- Klonuje cały paragraf
-- map("n", "<leader>cp", "yap<s-}>p")

-- Wkleja do linii komend lub wyszukiwania skopiowany tekst z bufora za pomocą <c-r>p
-- api.nvim_exec(
--   [[
--     cmap <c-r>p <c-r>"
-- ]],
--   false
-- )
cmap("<c-r>p", '<c-r>"')

-- Ustawienia skrótów klawiszowych dla plików pomocy
vim.api.nvim_create_augroup("HelpMap", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "help",
  },
  callback = function()
    vim.api.nvim_command([[ nnoremap <c-n> :cnext<cr> ]])
    vim.api.nvim_command([[ nnoremap <c-p> :cprevious<cr> ]])
    vim.api.nvim_command([[ nnoremap <leader>l <c-]> ]])
    vim.api.nvim_command([[ nnoremap <leader>h <c-t> ]])
    vim.api.nvim_command([[ nnoremap q :quit<cr> ]])
  end,
  group = "HelpMap",
})

-- Uruchamia Vista TOC
api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  command = [[nnoremap <leader>t :Vista<cr>]],
})

-- Klawisz `K` w plikach lua wywołuje pomoc dla wyrazu pod kursorem
api.nvim_create_autocmd("FileType", {
  pattern = { "lua" },
  command = [[nnoremap K viwy:help <c-r>"<cr>]],
})

-- Klawisz `K` w plikach lua wywołuje pomoc dla wyrazu pod kursorem
api.nvim_create_autocmd("FileType", {
  pattern = { "sh" },
  command = [[nnoremap K viwy:Man <c-r>"<cr>]],
})

-- Zmiana kolorów F8, Shift-F8, Ctrl-F8, F9
nnoremap("<f8>", ":NextColorScheme<cr>") -- f8
nnoremap("<f20>", ":PrevColorScheme<cr>") -- shift f8
nnoremap("<f32>", ":RandomColorScheme<cr>") -- ctrl f8
nnoremap("<f9>", ":BlacklistAddColorScheme<cr>") -- f9
nnoremap("<f21>", ":colo<cr>") -- shift f9

-- Plugin auto-session
-- map("n", "<leader>ss", "<cmd>SaveSession<cr>")
-- map("n", "<leader>sl", "<cmd>RestoreSession<cr>")

-- Dashboard
nnoremap("<f2>", ":<C-u>SessionSave<CR>")
nnoremap("<f3>", ":<C-u>SessionLoad<CR>")

-- Przenosi bieżącą linię do pliku
nnoremap("<leader>si", '<cmd>lua send_line_to_file(os.getenv("NOTES_DIR") .. "/inbox.md")<cr>')
nnoremap("<leader>sd", '<cmd>lua send_line_to_file(os.getenv("NOTES_DIR") .. "/done.md")<cr>')
nnoremap("<leader>sn", '<cmd>lua send_line_to_file(os.getenv("NOTES_DIR") .. "/notatki.md")<cr>')

-- Kopiuje bieżącą linię do pliku
nnoremap("<leader>ci", '<cmd>lua copy_line_to_file(os.getenv("NOTES_DIR") .. "/inbox.md")<cr>')
nnoremap("<leader>cd", '<cmd>lua copy_line_to_file(os.getenv("NOTES_DIR") .. "/done.md")<cr>)')
nnoremap("<leader>cn", '<cmd>lua copy_line_to_file(os.getenv("NOTES_DIR") .. "/notatki.md")<cr>)')

-- Przeniesienie zaznaczenia do pliku
-- map(
-- "v",
-- "<leader>si",
-- ":'<,'>d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'index.md', 'a')<cr>:cd %:p:h<cr>"
-- )
xnoremap(
  "<leader>si",
  ":'<,'>d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'index.md', 'a')<cr>:cd %:p:h<cr>"
)
-- map(
-- "v",
-- "<leader>sd",
-- ":'<,'>d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>"
-- )
xnoremap(
  "<leader>sd",
  ":'<,'>d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>"
)
-- map(
-- "v",
-- "<leader>sn",
-- ":'<,'>d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>"
-- )
xnoremap(
  "<leader>sn",
  ":'<,'>d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>"
)

-- Kopiuje bieżącą linię do pliku
-- map(
-- "v",
-- "<leader>ci",
-- ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'index.md', 'a')<cr>:cd %:p:h<cr>"
-- )
xnoremap(
  "<leader>ci",
  ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'index.md', 'a')<cr>:cd %:p:h<cr>"
)
-- map(
-- "v",
-- "<leader>cd",
-- ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>"
-- )
xnoremap(
  "<leader>cd",
  ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>"
)
-- map(
--   "v",
--   "<leader>cn",
--   ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>"
-- )

xnoremap(
  "<leader>cn",
  ":'<,'>y<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>"
)

-- Edycja wybranych plików
-- map("n", "<leader>ei", ":e $NOTES_DIR/inbox.md<cr>")
-- map("n", "<leader>ed", ":e $NOTES_DIR/done.md<cr>")
-- map("n", "<leader>en", ":e $NOTES_DIR/notatki.md<cr>")
nnoremap("<leader>ei", ":e $NOTES_DIR/inbox.md<cr>")
nnoremap("<leader>ed", ":e $NOTES_DIR/done.md<cr>")
nnoremap("<leader>en", ":e $NOTES_DIR/notatki.md<cr>")

-- Dodaje nowy plik dziennika
-- map("n", "<leader>ej", ":DiaryNotes<cr>")
nnoremap("<leader>ej", ":DiaryNotes<cr>")

-- Wyszukiwanie plików w katalogu $NOTES_DIR
-- map("n", "<leader>ee", "<cmd>lua search_notes_dir()<cr>")
nnoremap("<leader>ee", "<cmd>lua search_notes_dir()<cr>")

-- Przeszukiwanie plików w katalogu $NOTES_DIR
-- map("n", "<leader>er", "<cmd>lua grep_notes_dir()<cr>")
nnoremap("<leader>er", "<cmd>lua grep_notes_dir()<cr>")

-- Usuwa zaznaczony tekst a następnie wkleja tekst ze schowka bez podmiany rejestru
-- map("v", "<leader>p", '"_dP')
xnoremap("<leader>p", '"_dP')

-- Ustawia podzielone okno na główne (full screen)
-- map("n", "<leader>o", ':only<cr>:echom "There Can Be Only One"<cr>"')
nnoremap("<leader>o", ':only<cr>:echom "There Can Be Only One"<cr>"')

-- dwa x LEADER usuwa słowo i wchodzi w tryb wprowadzania
-- map("n", "<leader><leader>", "ciw")
nnoremap("<leader><leader>", "ciw")

-- Obsługa pluginu vim-surround
-- <leader>sw czeka na wprowadzenie znaku, którym otoczy wyraz
-- <leader>sW czeka na wprowadzenie znaku, którym otoczy WYRAZ
-- <leader>ssp czeka na wprowadzenie znaku, który otoczy paragraf
-- <leader>ss czeka na wprowadzenie znaku, którym otoczy linię
-- <leader>sdd czeka na wprowadzenie znaku, którym zostanie usunięty
nnoremap("<leader>sw", ":norm ysiw")
nnoremap("<leader>sW", ":norm ysiW")
nnoremap("<leader>ssp", ":norm ysip")
nnoremap("<leader>ss", ":norm yss")
nnoremap("<leader>sdd", ":norm ds")

-- map("n", "<Enter>", "o<Esc>")
-- map("n", "<space>", "i<space><C-c>l")

-- Plugin gitsigns
nnoremap("<c-n>", '<cmd>lua require"gitsigns.actions".next_hunk()<CR>zv')
nnoremap("<c-p>", '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>zv')
nnoremap("gj", '<cmd>lua require"gitsigns.actions".next_hunk()<CR>zv')
nnoremap("gk", '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>zv')

-- Przemapowanie klawiszy otwierających i zamykających zagnieżdżenia
nnoremap("zn", "zm")
nnoremap("zm", "zn")

-- Przejście na początek / koniec linii
nnoremap("gh", "0")
nnoremap("gl", "$")
xnoremap("gh", "0")
xnoremap("gl", "$")

-- Usuwa od kursora do początku / końca linii
nnoremap("dh", "xd0")
nnoremap("dl", "d$")

-- Usuwa od kursora do pierwszej spacji
nnoremap("d<space>", "df<space>")

-- Przechodzi pomiędzy dwoma ostatimi buforami
nnoremap("<Tab>", "<cmd>e #<CR>")

-- Poprzedni / następny bufor
nnoremap("<leader>,", "<cmd>bprevious<cr>")
nnoremap("<leader>.", "<cmd>bnext<cr>")

-- Usuwa bufor
nnoremap("<leader>d", "<cmd>BufferDelete<cr>")

-- Tab to switch buffers in Normal mode
-- map("n", "<Tab>", "<cmd>bnext<CR>")
-- map("n", "<S-Tab>", "<cmd>bprevious<CR>")

-- Usuwa obiekt tekstowy nie kopiując go do standardowego rejestru
-- map("n", "<leader>d", '"-d')

-- Wkleja ostatnio skopiowany tekst ale nie usunięty, ustawiony jako ,p i ,P
-- map("n", "p", '"0p')
-- map("n", "P", '"0P')
-- map("n", ",p", '"0p')
-- map("n", ",P", '"0P')
nnoremap(",p", '"0p')
nnoremap(",P", '"0P')

-- Wkleja ostatnio usunięty tekst
-- map("n", "<leader>p", "p")
-- map("n", "<leader>P", "P")

-- Uruchamia UndotreeToggle
nnoremap("<leader>u", ":UndotreeToggle<cr>")

-- Wyszukiwanie plików w ~/.config/nvim
nnoremap("<leader>v", "<cmd>lua search_nvim_dotfiles()<cr>")

-- Przeładowuje konfigurację $MYVIMRC
nnoremap("<leader>sv", ":luafile $MYVIMRC<cr>")

-- Uruchamia skrypt (bieżący plik)
nnoremap("<leader>sr", ":Write<cr>:!./%<cr>")

-- Przeładowuje konfigurajce otwartego pliku
nnoremap("<leader>sf", ":luafile %<cr>")

-- Mendadżer plików NvimTree
nnoremap("<leader>n", "<cmd>NvimTreeToggle<cr>")

-- Menadzęr plików CHADtree
-- map("n", "<leader>n", "<cmd>CHADopen<cr>")

-- Zaznacza cały plik, dodatkowo tworzy znacznik na bieżącej pozycji, `z wraca na miejsce znacznika
nnoremap("<leader>sa", "mzggVG<c-$>")

-- Make visual yanks place the cursor back where started
xnoremap("y", "ygv<Esc>")

-- Mapowanie znaczników (undo) w trybie INSERT po wprowadzeniu jednego ze znaków , . ! ? ; :
inoremap(",", ",<c-g>u")
inoremap(".", ".<c-g>u")
inoremap("!", "!<c-g>u")
inoremap("?", "?<c-g>u")
inoremap(";", ";<c-g>u")
inoremap(":", ":<c-g>u")

-- `mm` - tworzy znacznik; `mM` - wraca na miejsce znacznika
nnoremap("mm", "mm") -- tego oczywiście nie trzeba dodatkowo mapować
nnoremap("mM", "`m")

-- Przechodzi do kolejnej / poprzedniej szukanej pozycji, dodatkowo wyśrodkowuje ekran i otwiera zagnieżdżenia
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- Przechodzi ekran w dół / górę jednocześnie wyśrodkowując stronę i otwierając zagnieżdżenia
nnoremap("<c-d>", "<c-d>zzzv")
nnoremap("<c-u>", "<c-u>zzzv")

-- Łączy linie pozostawiając kursor w obecnej pozycji
nnoremap("J", "mzJ`z")

-- Kopiuje tekst od kursora do końca linii od wersji 0.6 jest to standardowe zachowanie
nnoremap("Y", "y$")

-- Kopiuje cały plik
nnoremap("ya", "mzggVGy`z")

-- Kopiuje linie z pominięciem pierwszego wyrazu / znaku bez znaku końca linii
nnoremap("yh", "0f lv$hy")

-- Wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długośc 'textwidth' znaków 'gqap'
nnoremap("<leader>a", "=ip gqap")

-- Łatwiejsza inkrementacja i dekremenatacja liczb
nnoremap("+", "<C-a>", { silent = true })
xnoremap("+", "<C-a>", { silent = true })
nnoremap("-", "<C-x>", { silent = true })
xnoremap("-", "<C-x>", { silent = true })

-- Automatyczne zamykanie tagów
inoremap(",/", "</<C-X><C-O>")

-- Rejestry
nnoremap("<leader>r", '<cmd>lua require("telescope.builtin").registers()<cr>')

-- Live Grep
nnoremap(
  "<leader>g",
  '<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))<cr>'
)

-- Grep String
nnoremap("<leader>zx", '<cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<CR>')

-- Bufory
-- map("n", "<leader>b", '<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>')
nnoremap("<leader>b", "<cmd>FzfLua buffers<cr>")
nnoremap("<leader>B", "<cmd>BufferPick<cr>")

-- Help Tags
map("n", "<leader>j", '<cmd>lua require("telescope.builtin").help_tags()<cr>')

-- Find Files
nnoremap(
  "<leader>f",
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '--follow', '-g', '!.git' }})<cr>",
  default_opts
)

-- Spell Suggest
-- map("n", "<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
-- nnoremap("<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')

-- zaznacza wyraz pod kursorem i przechodzi do modyfikacji wszystkich znalezionych wyrazów
nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Git Status
nnoremap(
  "<leader>i",
  '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_dropdown({}))<cr>'
)

-- Tags
nnoremap("<leader>ta", '<cmd>lua require("telescope.builtin").tags(require("telescope.themes").get_dropdown({}))<cr>')

-- Project
nnoremap("<leader>p", ":Telescope project<cr>")

-- Symbols
nnoremap("<leader>sy", '<cmd>lua require("telescope.builtin").symbols{ sources = {"emoji", "gitmoji"} }<cr>')
-- map("n", "<leader>sy", "<cmd>Telescope emoji<cr>")

-- Historia komend :
nnoremap("q:", "<nop>")
nnoremap("q:", ":Telescope command_history<cr>")
nnoremap("q;", ":Telescope command_history<cr>")
nnoremap("<leader>hc", ":Telescope command_history<cr>")

-- Lista zmapowanych klawiszy
nnoremap("<leader>m", ":Telescope keymaps<cr>")

-- Historia wyszukiwania
nnoremap("<leader>sh", ":Telescope search_history<cr>")

-- Uruchomienie terminala w podziale poziomym
-- <c-\><c-n> przechodzi w tryb NORMAL w oknie terminala, dzięki czemu można zaznaczać tekst w
-- terminalu a także poruszać się pomiędzy terminalem a oknem bufora
-- map("n", "<leader>t", "<cmd>split term://$SHELL<cr>")
-- map("n", "<leader>tt", "<cmd>split term://$SHELL<cr>")
nnoremap("<leader>t", '<cmd>ToggleTerm direction="vertical" size=60<cr>')
nnoremap("<leader>tt", '<cmd>ToggleTerm direction="float" size=60<cr>')

-- Wyszukiwanie plików w katalogu dotfiles
nnoremap("<leader>zz", "<cmd>lua search_dotfiles()<cr>")

-- Uruchamia tryb ZenMode
nnoremap("<leader>ze", "<cmd>ZenMode<cr>")

-- Plugin kommentary
api.nvim_set_keymap("n", "<c-_>", "<Plug>kommentary_line_default", {})
api.nvim_set_keymap("x", "<c-_>", "<Plug>kommentary_visual_default", {})

-- Plugin vim-vsnip
cmd([[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']])
cmd([[smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']])
cmd([[imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']])
cmd([[smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']])

-- Plugin gitsigns
map("n", "<leader>hs", '<cmd>lua require"gitsigns".stage_hunk()<CR>')
map("v", "<leader>hs", '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>')
map("n", "<leader>hu", '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>')
map("n", "<leader>hr", '<cmd>lua require"gitsigns".reset_hunk()<CR>')
map("v", "<leader>hr", '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>')
map("n", "<leader>hR", '<cmd>lua require"gitsigns".reset_buffer()<CR>')
map("n", "<leader>hp", '<cmd>lua require"gitsigns".preview_hunk()<CR>')
map("n", "<leader>hn", '<cmd>lua require"gitsigns".next_hunk()<CR>')
map("n", "<leader>hb", '<cmd>lua require"gitsigns".blame_line(true)<CR>')
map("o", "ih", ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>')
map("x", "ih", ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>')
