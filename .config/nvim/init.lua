-- Aktualizacja 2021-12-11 16:04:11
vimrc_version = "init.lua: 2.2"
-- zn schowanie zagnieżdżeń
-- zm otworzenie zagnieżdżeń
-- <leader>zn - przeszukiwanie katalogu konfiguracyjnego ~/.config/nvim
-- {{{ pluginy
require("packer").startup(function(use)
  -- menadżer pluginów
  use("wbthomason/packer.nvim")

  -- use("neoclide/coc.nvim")

  -- use("fatih/vim-go")

  use({
    "sudormrfbin/cheatsheet.nvim",

    requires = {
      { "nvim-telescope/telescope.nvim" },
      { "nvim-lua/popup.nvim" },
      { "nvim-lua/plenary.nvim" },
    },
  })

  -- git
  use("lewis6991/gitsigns.nvim") -- integracja git
  -- use "rhysd/git-messenger.vim"

  -- obsługa schowka systemowego
  use("Jorengarenar/fauxClip")

  -- menadżer plików
  -- use({ "ms-jpq/chadtree", run = ":CHADdeps" })
  -- use({ "ms-jpq/chadtree" })
  use("kyazdani42/nvim-tree.lua")

  -- komentarze
  use("b3nj5m1n/kommentary")

  -- automatyczne uzupełnianie
  use("hrsh7th/nvim-compe")
  use("hrsh7th/vim-vsnip")
  -- use "L3MON4D3/LuaSnip"

  use("nvim-telescope/telescope-symbols.nvim")

  -- automatyczne zamykanie nawiasów i cudzysłowiów
  use("steelsojka/pears.nvim")

  -- podświetlanie identycznych słów
  use("yamatsum/nvim-cursorline")

  -- polecenia systemu Linux
  use("tpope/vim-eunuch")

  -- formatowanie kodu
  use("mhartington/formatter.nvim")

  use("junegunn/vim-peekaboo")

  -- wyszukiwanie
  use("junegunn/fzf")
  use("junegunn/fzf.vim")

  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  use("nvim-telescope/telescope-project.nvim")

  -- use("nvim-treesitter/nvim-treesitter")

  -- szybkie poruszanie się po pliku
  -- use("ggandor/lightspeed.nvim")

  -- hop szybkie poruszanie się po pliku
  -- use("phaazon/hop.nvim")

  use("lukas-reineke/indent-blankline.nvim")

  -- use("rmagatti/auto-session")

  -- vim-repeat
  use("tpope/vim-repeat")

  -- vim-surround
  use("tpope/vim-surround")

  use("wellle/targets.vim")

  -- minimapa :!cargo install --locked code-minimap
  -- { "wfxr/minimap.vim", run = "cargo install --locked code-minimap" },

  -- undotree
  use("mbbill/undotree")

  -- use "tibabit/vim-templates"

  -- use "vim-scripts/YankRing.vim"

  -- statusline
  use("hoob3rt/lualine.nvim")
  -- use "akinsho/nvim-bufferline.lua"
  use("romgrk/barbar.nvim")

  -- Dashboard
  use({ "glepnir/dashboard-nvim" })

  -- szyfrowanie
  use("jamessan/vim-gnupg")

  -- "oberblastmeister/neuron.nvim"

  -- markdown
  use("folke/zen-mode.nvim")
  use("junegunn/goyo.vim")
  use("junegunn/limelight.vim")
  use("dhruvasagar/vim-table-mode")
  use("vimwiki/vimwiki")
  use("junegunn/vim-markdown-toc")
  -- use("instant-markdown/vim-instant-markdown")

  -- vim-dotoo
  use("dhruvasagar/vim-dotoo")

  -- use "liuchengxu/vim-which-key"

  -- automatyczne podpowiedzi
  -- use "vim-scripts/AutoComplPop"

  -- biblioteki, dodatki
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use("kyazdani42/nvim-web-devicons")
  use("ryanoasis/vim-devicons")
  use("xolox/vim-misc")

  -- kolory
  use("Taverius/vim-colorscheme-manager")
  use("xolox/vim-colorscheme-switcher")
  use("chriskempson/base16-vim")
  use("rose-pine/neovim")
  -- use "flazz/vim-colorschemes"
  use("EdenEast/nightfox.nvim")
  use("rakr/vim-one")
  use("lifepillar/vim-solarized8")
  use("ayu-theme/ayu-vim")
  use("gruvbox-community/gruvbox")
  use("kristijanhusak/vim-hybrid-material")
  use("lighthaus-theme/vim-lighthaus")
  use("sainnhe/everforest")
  use("sainnhe/gruvbox-material")
  use("srcery-colors/srcery-vim")
  use("zekzekus/menguless")
  use("whatyouhide/vim-gotham")
  use("marko-cerovac/material.nvim")
end)
-- pluginy }}}
-- {{{ aliasy
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn -- to call Vim functions e.g. fn.bufnr()
local g = vim.g -- a table to access global variables
local opt = vim.opt -- to set options
local api = vim.api

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- aliasy }}}
-- {{{ ustawienia ·
-- opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
opt.showtabline = 1 -- 0 nie pokazuje; 1 pokazuje jeśli są karty (tab), 2 zawsze pokazuje górną belkę
opt.conceallevel = 0 -- sprawia, że znaki `` są widzialne w plikach Markdown
opt.textwidth = 100 -- szerokość linii
opt.colorcolumn = "+1"
opt.cursorline = true -- wyróżnia bieżącą linię
opt.fileencoding = "utf-8" -- the encoding written to a file
opt.fileformat = "unix"
opt.encoding = "utf-8" -- Set default encoding to UTF-8
opt.foldcolumn = "1"
opt.foldmethod = "marker"
-- opt.foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
-- opt.foldmethod = "indent"
-- opt.foldenable = false
opt.title = true -- set the title of window to the value of the titlestring
opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
opt.pumheight = 10 -- pop up menu height
opt.autoread = true
opt.autochdir = true
opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
opt.spell = false
opt.backspace = { "indent", "eol", "start" }
opt.clipboard = "unnamedplus" -- dostęp do schowka systemowego
opt.completeopt = { "menuone", "noselect" }
-- se completeopt=menuone,longest,noselect
-- se completeopt=menuone,noinsert,noselect
-- opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
opt.whichwrap:append("<,>,h,l")
opt.formatoptions = "l"
opt.hidden = true -- required to keep multiple buffers and open multiple buffers
opt.hlsearch = true -- Highlight found searches
opt.ignorecase = true -- ignoruje wielkość znaków
opt.inccommand = "split" -- Get a preview of replacements
opt.incsearch = true -- Shows the match while typing
opt.joinspaces = false -- No double spaces with join
opt.linebreak = true -- Stop words being broken on wrap
opt.list = true -- Show some invisible characters
opt.number = true -- wyświetlanie numerów linii
opt.relativenumber = false -- wyświetlanie relatywnych numerów linii
opt.numberwidth = 5 -- ustawia szerokość kolumny numerowania linii
opt.scrolloff = 4 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context
opt.tabstop = 4 -- number of visual spaces per TAB
opt.softtabstop = 4 -- number of spaces in tab when editing
opt.shiftwidth = 4 -- number of spaces to use for autoindent
opt.expandtab = true -- expand tab to spaces so that tabs are spaces
opt.shiftround = true -- Round indent
opt.showmode = false -- Don't display mode
opt.signcolumn = "yes:1" -- always show signcolumns
opt.smartcase = true -- Do not ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = "pl"
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.termguicolors = true -- You will have bad experience for diagnostic messages when it's default 4000.
opt.timeoutlen = 500 -- czas w milisekundach na wprowadzenie skrótu klawiszowego, ma znaczenie przy sekwencjach np. <leader>sW
opt.updatetime = 300 -- don't give |ins-completion-menu| messages.
opt.lazyredraw = true -- szybciej wykonuje makra
opt.wrap = false -- zawijanie linii
opt.wildmenu = true
opt.wildmode = "longest:full,full"
-- opt.wildmode = "list:longest,full"
opt.swapfile = false -- tworzenie pliku swap
opt.backup = false -- creates a backup file
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- opt.undodir = CACHE_PATH .. "/undo" -- set an undo directory
-- opt.undodir = "$HOME/.config/nvim/undo" -- set an undo directory
-- opt.undodir = utils.join_paths(get_cache_dir(), "undo"), -- set an undo directory
opt.undofile = true -- enable persistent undo
opt.undolevels = 1000
opt.viminfo = "'100,n$HOME/.local/share/nvim/viminfo/viminfo"
opt.viewdir = "$HOME/.local/share/nvim/view"
opt.directory = "~/.local/share/nvim/swap//"
opt.path:remove("/usr/include")
opt.path:append("**")
opt.listchars = "nbsp:⦸,tab:▸ ,eol:¬,extends:»,precedes:«,trail:•" -- eol ↲
opt.showbreak = "↪"
opt.fillchars:append({ eob = " " }) -- usuwa znak ~ na końcu bufora
opt.tags:append("./tags,./../tags,./../../tags,./../../../tags,tags")
opt.laststatus = 2
opt.complete:append("kspell") -- Ctrl+p w trybie INSERT podpowiedzi ze słownika wymaga włączenia trybu spell

opt.mouse = "a" -- allow the mouse to be used in neovim
opt.wildignore = "*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*/node_modules/*"

-- cmd('let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"')
-- cmd('let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"')

-- Pomaga używaniu aliasów BASH
cmd('let $BASH_ENV="~/.config/aliases"')

-- Ustawia powłokę systemową
opt.shell = "/bin/bash"

g.netrw_liststyle = 3 -- Tree style Netrw

opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,resize,winpos,terminal"

-- podkreśla słowo na którym znajduje się kursor
g.cursorword_highlight = true
-- podświetla bieżącą linię po 1000ms od puszczeniu klawisza
g.cursorline_timeout = 1000

-- Colourscheme config
g.everforest_background = "hard"
g.everforest_enable_italic = 1
g.everforest_diagnostic_text_highlight = 1
g.everforest_diagnostic_virtual_text = "colored"
g.everforest_current_word = "bold"

g.ayucolor = "mirage"

-- Load the colorscheme
-- cmd([[colorscheme ayu]])
-- cmd([[colorscheme gotham]])
-- cmd([[colorscheme solarized8_flat]])
api.nvim_exec([[colorscheme everforest]], false)
-- api.nvim_exec([[colorscheme material]], false)

-- Ustawienie schmatu kolorów nightfox
-- Dostępne tematy: nordfox, palefox, dayfox, dawnfox, duskfox
-- require('nightfox').load('nordfox')

-- g.material_style = "lighter"
-- g.material_style = "palenight"
-- g.material_style = "deep ocean"
-- g.material_style = "ocanic"
-- g.material_style = "darker"

-- konfiguracja koloru material
--[[ require("material").setup({

  contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
  borders = false, -- Enable borders between verticaly split windows

  italics = {
    comments = false, -- Enable italic comments
    keywords = false, -- Enable italic keywords
    functions = false, -- Enable italic functions
    strings = false, -- Enable italic strings
    variables = false, -- Enable italic variables
  },

  contrast_windows = { -- Specify which windows get the contrasted (darker) background
    "terminal", -- Darker terminal background
    "packer", -- Darker packer background
    "qf", -- Darker qf list background
  },

  text_contrast = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = false, -- Enable higher contrast text for darker style
  },

  disable = {
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },
  -- Overwrite highlights with your own
  -- custom_highlights = {
    -- CursorLine = "#0000FF",
    -- LineNr = "#FF0000",
  -- },
}) ]]

-- api.nvim_command([[ autocmd ColorScheme * highlight Search ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan ]])

-- Use spelling for markdown files ‘]s’ to find next, ‘[s’ for previous, 'z=‘ for suggestions when on one.
-- Source: http:--thejakeharding.com/tutorial/2012/06/13/using-spell-check-in-vim.html
api.nvim_exec(
  [[
    augroup markdownSpell
        autocmd!
        autocmd FileType markdown,md,txt setlocal spell
        autocmd BufRead,BufNewFile *.md,*.gpg.md,*.txt,*.markdown setlocal spell
    augroup END
]],
  false
)
cmd("au BufNewFile,BufReadPost *.gpg.md set filetype=markdown")
cmd("au BufNewFile,BufReadPost *.md set filetype=markdown")

-- wchodzi w tryb INSERT przy utowrzeniu nowego pliku typu Markdown
cmd("au! BufNewFile *.md startinsert!")

-- ustawia podświetlenie i czas podświetlenia kopiowanego tekstu
-- cmd("au TextYankPost * lua vim.highlight.on_yank {higroup = IncSearch, on_visual = true, timeout = 150}")
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = true, timeout = 150}")
-- ustawienia }}}
-- {{{ funkcje, komendy
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
            execute ":e $NOTES_DIR/diary/".strftime("%F").".md"
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
            let kolory = ['ayu', 'nightfox', 'nordfox', 'palefox', 'dayfox', 'dawnfox', 'duskfox',
                \ 'everforest', 'gruvbox-material', 'one', 'srcery', 'base16-atelier-savanna',
                \ 'base16-atlas', 'base16-darktooth', 'base16-eighties', 'base16-material',
                \ 'base16-solarized-light','material']
            call fzf#run(fzf#wrap({'source': kolory, 'sink' : 'colorscheme'}))
        endfunction
    ]],
  false
)

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

-- Wyszukiwanie telescope w katalogu dotfiles
search_nvim_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< nvim >",
    cwd = "$HOME/.config/nvim/",
    find_command = { "rg", "--files", "--hidden", "--follow", "-g", "!.git" },
    file_ignore_patterns = { "spell/" },
  })
end

-- Funkcja Time() wyświetla bieżącą datę i godzinę w formacie 2021-11-23, wtorek 20:53:27
api.nvim_exec(
  [[
    function! Time()
        echom strftime("- Teraz jest: %F, %A %T -")
    endfunction
]],
  false
)

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

-- Przechodzi do katalogu edytowanego pliku i uruchamia skrypt ~/bin/gp.sh
api.nvim_exec(
  [[
    function! GP()
        silent !cd $(dirname $(readlink -m %)) && ~/bin/gp.sh
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
  print(vimrc_version)
end

-- map("n", "<leader>bc", "<cmd>lua VimrcVersion()<cr>", { silent = false })
-- map("n", "<leader>bb", "<cmd>lua print(vimrc_version)<cr>", { silent = false })

-- komendy
cmd("command! CD call CD()")
cmd("command! CDEdit e ~/.config/bmproj")
cmd("command! DiaryNotes call DiaryNotes()")
cmd("command! GA call GA()")
cmd("command! GP call GP()")
cmd("command! GR :GoRun")
cmd("command! InsertDiaryHeader call InsertDiaryHeader()")
cmd("command! Kolory call Kolory()")
cmd("command! PI PackerInstall")
cmd("command! PS PackerSync")
cmd("command! RevBackground call RevBackground()")
cmd("command! S :source %")
cmd("command! Time call Time()")
cmd("command! UpdateVimrc call UpdateVimrc()")
cmd("command! VimrcVersion :lua VimrcVersion()<cr>")
cmd("command! Write call Write()")
-- funkcje, komendy }}}
-- ustawienia pluginów {{{
require("plugins/lualine")
require("plugins/barbar")
require("plugins/zenmode")
require("plugins/dashboard")
require("plugins/compe")
require("plugins/cheatsheet")
require("plugins/gitsigns")
require("plugins/gnupg")
-- hop {{{
--[[ require("hop").setup({
  reverse_distribution = true,
})
-- Mapowanie
map("n", "<leader>h", "<cmd>lua require'hop'.hint_words()<cr>")
map("n", "<leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
map("v", "<leader>h", "<cmd>lua require'hop'.hint_words()<cr>")
map("v", "<leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
-- Kolory
vim.cmd("hi HopNextKey guifg=#ff9900")
vim.cmd("hi HopNextKey1 guifg=#ff9900")
vim.cmd("hi HopNextKey2 guifg=#ff9900")
-- hop }}} ]]
-- {{{ indent-blankline
require("indent_blankline").setup({
  -- char = "┊",
  -- char = "|",
  char_list = { "|", "¦", "┆", "┊" },
  space_char_blankline = " ",
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = { "help", "packer", "dashboard" },
  char_highlight = "LineNr",
  show_trailing_blankline_indent = false,
  -- char_highlight_list = { "Normal", "Function", "Error" },
})
-- indent-blankline }}}
-- {{{ instant-markdown
g.instant_markdown_browser = "firefox --new-window"
g.instant_markdown_slow = 1
g.instant_markdown_autostart = 1
-- g.instant_markdown_open_to_the_world = 1
-- g.instant_markdown_allow_unsafe_content = 1
-- g.instant_markdown_allow_external_content = 0
-- g.instant_markdown_mathjax = 1
-- g.instant_markdown_mermaid = 1
-- g.instant_markdown_logfile = "~/tmp/instant_markdown.log"
-- g.instant_markdown_autoscroll = 0
-- g.instant_markdown_port = 8888
-- g.instant_markdown_python = 1
-- instant-markdown }}}
-- {{{ kommentary
vim.g.kommentary_create_default_mappings = false

-- api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", {})
-- api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
-- api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", {})
-- api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})
-- api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
-- api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})

-- api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", {})
api.nvim_set_keymap("n", "<c-_>", "<Plug>kommentary_line_default", {})
-- api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
api.nvim_set_keymap("x", "<c-_>", "<Plug>kommentary_visual_default", {})

require("kommentary.config").configure_language("rust", {
  single_line_comment_string = "//",
  multi_line_comment_strings = { "/*", "*/" },
})
-- kommentary }}}
-- {{{ lightspeed
--[[
api.nvim_set_keymap("n", "f", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("n", "F", "<Plug>Lightspeed_S", {})
api.nvim_set_keymap("n", "t", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("n", "t", "<Plug>Lightspeed_S", {})
api.nvim_set_keymap("v", "t", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("v", "T", "<Plug>Lightspeed_S", {})
api.nvim_set_keymap("v", "f", "<Plug>Lightspeed_s", {})
api.nvim_set_keymap("v", "F", "<Plug>Lightspeed_S", {})

-- api.nvim_set_keymap("n", "h", "<Plug>Lightspeed_s", {})
-- api.nvim_set_keymap("n", "H", "<Plug>Lightspeed_S", {})
-- api.nvim_set_keymap("v", "h", "<Plug>Lightspeed_s", {})
-- api.nvim_set_keymap("v", "H", "<Plug>Lightspeed_S", {})

-- nmap <expr> f reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_f" : "f"
-- nmap <expr> F reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_F" : "F"
-- nmap <expr> t reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_t" : "t"
-- nmap <expr> T reg_recording() . reg_executing() == "" ? "<Plug>Lightspeed_T" : "T"

require("lightspeed").setup({
  jump_to_first_match = true,
  jump_on_partial_input_safety_timeout = 400,
  -- This can get _really_ slow if the window has a lot of content,
  -- turn it on only if your machine can always cope with it.
  highlight_unique_chars = false,
  grey_out_search_area = true,
  match_only_the_start_of_same_char_seqs = true,
  limit_ft_matches = 5,
  full_inclusive_prefix_key = "<c-x>",
  -- By default, the values of these will be decided at runtime,
  -- based on `jump_to_first_match`.
  labels = nil,
  cycle_group_fwd_key = nil,
  cycle_group_bwd_key = nil,
})
]]
-- lightspeed }}}
-- {{{ minimap
g.minimap_width = 10
g.minimap_auto_start = 0
-- g.minimap_auto_start_win_enter = 1
-- minimap }}}
-- nvim-tree {{{
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {},
    },
    number = false,
    relativenumber = false,
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
})
-- }}}
-- {{{ nvim-web-devicons
require("nvim-web-devicons").setup({
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      name = "Zsh",
    },
  },
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true,
})
-- nvim-web-devicons }}}
-- {{{ pears
require("pears").setup(function(conf)
  conf.pair("{", "}")
  conf.expand_on_enter(false)
end)
-- pears }}}
-- {{{ prettier
local prettier = function()
  return {
    exe = "prettier",
    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
    -- args = { "--stdin-filepath", api.nvim_buf_get_name(0), "--double-quote" },
    stdin = true,
  }
end

require("formatter").setup({
  filetype = {
    markdown = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
  },
})

require("formatter").setup({
  logging = false,
  filetype = {
    javascript = { prettier },
    typescript = { prettier },
    html = { prettier },
    css = { prettier },
    scss = { prettier },
    markdown = { prettier },
    lua = {
      -- Stylua
      function()
        return {
          exe = "stylua",
          args = { "--indent-width", 2, "--indent-type", "Spaces" },
          stdin = false,
        }
      end,
    },
  },
})

-- Runs Formatter on save
api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.ts,*.css,*.scss,*.md,*.html,*.lua : FormatWrite
augroup END
]],
  true
)
-- prettier }}}
-- {{{ telescope
local sorters, actions, previewers =
  require("telescope.sorters"), require("telescope.actions"), require("telescope.previewers")

local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--follow",
    },
    prompt_prefix = " ❯ ",
    initial_mode = "insert",
    file_ignore_patterns = { ".git/*", "node_modules", "env/*", "venv/*" },
    color_devicons = true,
    winblend = 20,
    file_sorter = sorters.get_fzy_sorter,
    generic_sorter = sorters.get_fzy_sorter,
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<esc>"] = actions.close,
      },
    },
  },
  extensions = {
    -- Fast, fast, really fast sorter (fzf native)
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    project = {
      base_dirs = {
        "$HOME",
        -- "~/Sync",
        -- { "~/git/github", maxdepth = 2 },
        -- { "~/git/github " },
        -- { '~/git', max_depth = 2 },
        -- { path = '~/workspace' },
        -- { path = '~/src', max_depth = 2 },
      },
      hidden_files = true, -- default: false
      -- display_type = "full",
    },
  },
  find_files = {
    theme = "dropdown",
  },
  pickers = {
    buffers = {
      sort_lastused = true,
      theme = "dropdown",
      mappings = {
        i = {
          ["<C-w>"] = "delete_buffer",
        },
        n = {
          ["<C-w>"] = "delete_buffer",
        },
      },
    },
  },
})

-- Load Telescope extensions
require("telescope").load_extension("fzf")
require("telescope").load_extension("project")
-- telescope }}}
-- {{{ treesitter
-- local ts = require("nvim-treesitter.configs")
-- ts.setup({ ensure_installed = "maintained", highlight = { enable = true } })
-- treesitter }}}
-- {{{ vim-colorscheme-manager
g.colorscheme_manager_file = "~/.config/nvim/.colorscheme"
-- }}}
-- {{{ vim-dotoo
vim.g["dotoo#agenda#files"] = "~/workspace/org/*.org"
vim.g["dotoo#capture#refile"] = vim.fn.expand("~/workspace/org/refile.org")
api.nvim_exec(
  [[
    augroup dootoft
        au!
        autocmd BufNewFile,BufRead *.org   set filetype=dotoo
    augroup END
  ]],
  false
)
-- let g:dotoo#agenda#files = ['~/workspace/org/*.org']
-- let g:dotoo#capture#refile = expand('~/workspace/org/refile.org')
-- }}}
-- {{{ vimwiki
api.nvim_exec(
  [[
    " wyłącza plugin vimwiki dla innych plików markdown poza listą wiki
    let g:vimwiki_global_ext = 0

    " wiki
    let wiki = {}
    let wiki.path = '~/Vimwiki/wiki'
    let wiki.ext = '.wiki'
    let wiki.syntax = 'markdown'
    let wiki.nested_syntaxes = {'python': 'python', 'json': 'json', 'sh': 'sh'}
    let wiki.auto_tags = 1

    " chaos wiki
    let chaos = {}
    let chaos.path = '~/Vimwiki/chaos'
    let chaos.ext = '.wiki'
    let chaos.syntax = 'markdown'
    let chaos.auto_tags = 1

    " linux
    let linux = {}
    let linux.path = '~/Vimwiki/linux'
    let linux.ext = '.wiki'
    let linux.syntax = 'markdown'
    let linux.auto_tags = 1

    let g:vimwiki_list = [wiki, chaos, linux]
    let g:vimwiki_listsyms = '✗○◐●✓'

    autocmd Filetype vimwiki map <leader>1 1<leader>ww
    autocmd Filetype vimwiki map <leader>2 2<leader>ww
    autocmd Filetype vimwiki map <leader>3 3<leader>ww
    " Zamiast 1<leader>ww można użyć zapisu 1<plug>VimwikiIndex
    " autocmd Filetype vimwiki map <leader>4 4<Plug>VimwikiIndex
]],
  false
)

-- cmd("let g:vimwiki_list = [wiki, chaos, linux]")
-- }}}
-- {{{ luasnip
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
-- inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

-- snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
-- snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

-- imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- }}}
-- {{{ auto-session
-- local sessionopts = {
-- SaveSession
-- RestoreSession
-- log_level = "info",
-- auto_session_enable_last_session = false,
-- auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
-- auto_session_enabled = true,
-- auto_save_enabled = true,
-- auto_restore_enabled = false,
-- auto_session_suppress_dirs = nil,
-- }
-- require("auto-session").setup(sessionopts)
-- }}}
-- {{{ bufferline
-- require("bufferline").setup({})

-- require("bufferline").setup({
--   options = {
--     numbers = buff_id, -- "none" | "ordinal" | "buffer_id" | "both",
--     number_style = { "none", "subscript" }, -- "superscript" | "" | { "none", "subscript" }, -- buffer_id at index 1, ordinal at index 2
--     mappings = true, -- true | false,
--     close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
--     right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
--     left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
--     middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
--     -- NOTE: this plugin is designed with this icon in mind,
--     -- and so changing this is NOT recommended, this is intended
--     -- as an escape hatch for people who cannot bear it for whatever reason
--     indicator_icon = "▎",
--     buffer_close_icon = "",
--     modified_icon = "●",
--     close_icon = "",
--     left_trunc_marker = "",
--     right_trunc_marker = "",
--     --- name_formatter can be used to change the buffer's label in the bufferline.
--     --- Please note some names can/will break the
--     --- bufferline so use this at your discretion knowing that it has
--     --- some limitations that will *NOT* be fixed.
--     name_formatter = function(buf) -- buf contains a "name", "path" and "bufnr"
--       -- remove extension from markdown files for example
--       if buf.name:match("%.md") then
--         return vim.fn.fnamemodify(buf.name, ":t:r")
--       end
--     end,
--     max_name_length = 18,
--     max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
--     tab_size = 18,
--     diagnostics = false, -- false | "nvim_lsp",
--     diagnostics_indicator = function(count, level, diagnostics_dict, context)
--       return "(" .. count .. ")"
--     end,
--     -- NOTE: this will be called a lot so don't do any heavy processing here
--     custom_filter = function(buf_number)
--       -- filter out filetypes you don't want to see
--       if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
--         return true
--       end
--       -- filter out by buffer name
--       if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
--         return true
--       end
--       -- filter out based on arbitrary rules
--       -- e.g. filter out vim wiki buffer from tabline in your work repo
--       if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
--         return true
--       end
--     end,
--     -- offsets = {{filetype = "NvimTree", text = "File Explorer" | function , text_align = "left" | "center" | "right"}},
--     offsets = { { filetype = "NvimTree", text = "File Explorer" } },
--     show_buffer_icons = true, -- true | false, -- disable filetype icons for buffers
--     show_buffer_close_icons = true, -- true | false,
--     show_close_icon = true, -- true | false,
--     show_tab_indicators = true, -- true | false,
--     persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
--     -- can also be a table containing 2 custom separators
--     -- [focused and unfocused]. eg: { '|', '|' }
--     separator_style = "thick", -- "slant" | "thick" | "thin" | { 'any', 'any' },
--     enforce_regular_tabs = false, -- false | true,
--     always_show_bufferline = true, -- true | false,
--     sort_by = "id", -- 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
--     -- return buffer_a.modified > buffer_b.modified
--     -- end,
--   },
-- })
-- bufferline }}}
-- {{{ luatab
-- vim.o.tabline = "%!v:lua.require'luatab'.tabline()"
-- }}}
-- {{{ neuron
-- require("neuron").setup({
--   virtual_titles = true,
--   mappings = true,
--   run = nil, -- function to run when in neuron dir
--   neuron_dir = "~/neuron", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
--   leader = "gz", -- the leader key to for all mappings, remember with 'go zettel'
-- })
-- }}}
-- ustawienia pluginów }}}
-- {{{ mapowanie klawiszy
-- Ustawia SPACE jako klawisz LEADER
g.mapleader = " "

-- wejście do trybu COMMAND
map("n", "<leader>;", ":", { silent = false })

-- Uruchomienie podręczniej pomocy LEADER ?
map("n", "<leader>?", "<cmd>Cheatsheet<cr>")

-- otwiera nowy plik
map("n", "<leader>c", "<cmd>enew<cr>")

-- uruchamia Dashboard
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

-- poruszanie się pomiędzy oknami za pomocą <c-h,j,k,l>
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
map("n", "<leader>si", ":d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'index.md', 'a')<cr>:cd %:p:h<cr>")
map("n", "<leader>sd", ":d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>")
map("n", "<leader>sn", ":d<cr>:cd $NOTES_DIR<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>")

-- przeniesienie zaznaczenia do pliku
map("v", "<leader>si", ":d<cr>:cd $NOTES_DIR/<cr>:call writefile(getreg('@', 1, 1), 'index.md', 'a')<cr>:cd %:p:h<cr>")
map("v", "<leader>sd", ":d<cr>:cd $NOTES_DIR/<cr>:call writefile(getreg('@', 1, 1), 'done.md', 'a')<cr>:cd %:p:h<cr>")
map(
  "v",
  "<leader>sn",
  ":d<cr>:cd $NOTES_DIR/<cr>:call writefile(getreg('@', 1, 1), 'notatki.md', 'a')<cr>:cd %:p:h<cr>"
)

-- edycja wybranych plików
map("n", "<leader>ei", ":e $NOTES_DIR/index.md<cr>")
map("n", "<leader>ed", ":e $NOTES_DIR/done.md<cr>")
map("n", "<leader>en", ":e $NOTES_DIR/notatki.md<cr>")

-- dodaje nowy plik dziennika
map("n", "<leader>ej", ":DiaryNotes<cr>")

map("n", "<leader>ee", "<cmd>lua search_notes_dir()<cr>")

map("n", "<leader>er", "<cmd>lua grep_notes_dir()<cr>")

-- usuwa zaznaczony tekst a następnie wkleja tekst ze schowka
-- vnoremap <leader>p "_dP

-- automatycznie odświerza pliki
api.nvim_exec(
  [[
    autocmd FocusGained,BufEnter,CursorHold $NOTES_DIR/*.md set autoread
    autocmd FocusGained,BufEnter,CursorHold $NOTES_DIR/*.md :checktime
]],
  false
)

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
-- map("n", "<leader>d", "\"-d")

-- noremap p "0p
-- noremap P "0P
-- noremap <leader>p p
-- noremap <leader>P P

-- map("n", "<leader>th", ":nohl<cr>", { silent = true })
map("n", "<leader>u", ":UndotreeToggle<cr>")

-- Otwiera plik konfiguracyjny Neovim
map("n", "<leader>v", "<cmd>e $MYVIMRC<cr>")

-- Source nvimrc file
map("n", "<leader>sv", ":luafile $MYVIMRC<cr>")

-- Otwiera nowy plik do edycji
-- map("n", "<Leader>n", "<cmd>enew<cr>")

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

-- kopiuje tekst od kursora do końca linii
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
-- <leader>p    find_files
-- <leader>r    registers
-- <leader>g    live_grep
-- <leader>zx   grep_string
-- <leader>b    buffers
-- <leader>j    help_tags
-- <leader>f    file_browser
-- <leader>s    spell_suggest
-- <leader>i    git_status
-- <leader>t    tags
-- <leader>P    project
map(
  "n",
  "<leader>p",
  '<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))<cr>'
)
map("n", "<leader>r", '<cmd>lua require("telescope.builtin").registers()<cr>')
map(
  "n",
  "<leader>g",
  '<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))<cr>'
)
map("n", "<leader>zx", '<cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<CR>')
map("n", "<leader>b", '<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>')
map("n", "<leader>j", '<cmd>lua require("telescope.builtin").help_tags()<cr>')
--[[ map(
  "n",
  "<leader>f",
  '<cmd>lua require("telescope.builtin").file_browser(require("telescope.themes").get_dropdown({}))<cr>'
) ]]
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
map("n", "<leader>t", '<cmd>lua require("telescope.builtin").tags(require("telescope.themes").get_dropdown({}))<cr>')

map("n", "<leader>P", ":Telescope project<cr>")

-- map("n", "<leader>sy", '<cmd>lua require("telescope.builtin").symbols{ sources = {"emoji", "gitmoji"} }<cr>')
-- map("n", "<leader>sy", "<cmd>Telescope emoji<cr>")

-- Uruchomienie terminala w podziale poziomym
-- <c-\><c-n> przechodzi w tryb NORMAL w oknie terminala, dzięki czemu można zaznaczać tekst w
-- terminalu a także poruszać się pomiędzy terminalem a oknem bufora
-- map("n", "<leader>t", "<cmd>split term://$SHELL<cr>")

-- wyszukiwanie plików w katalogu dotfiles
map("n", "<leader>zz", "<cmd>lua search_dotfiles()<cr>")

-- wyszukiwanie plików w ~/.config/nvim
map("n", "<leader>zn", "<cmd>lua search_nvim_dotfiles()<cr>")

-- uruchamia tryb ZenMode
map("n", "<leader>ze", "<cmd>ZenMode<cr>")

-- plugin compe
vim.api.nvim_set_keymap("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
-- mapowanie klawiszy }}
