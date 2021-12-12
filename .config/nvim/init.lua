-- Aktualizacja 2021-12-12 23:20:15
vimrc_version = "init.lua: 2.2"
-- zn schowanie zagnieżdżeń
-- zm otworzenie zagnieżdżeń
-- <leader>v - przeszukiwanie katalogu konfiguracyjnego ~/.config/nvim
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
  -- use("ms-jpq/chadtree")
  use("kyazdani42/nvim-tree.lua")

  use("b3nj5m1n/kommentary") -- komentarze

  -- automatyczne uzupełnianie
  use("hrsh7th/nvim-compe")
  use("hrsh7th/vim-vsnip")
  -- use "L3MON4D3/LuaSnip"
  -- use "vim-scripts/AutoComplPop"
  -- use("tibabit/vim-templates")

  use("nvim-telescope/telescope-symbols.nvim")

  -- automatyczne zamykanie nawiasów i cudzysłowiów
  use("steelsojka/pears.nvim")

  -- formatowanie kodu
  use("mhartington/formatter.nvim")

  use("junegunn/vim-peekaboo") -- wyświetla zawartość rejestrów po naciśnięciu klawisza "
  use("tpope/vim-eunuch") -- polecenia systemu Linux
  -- use("yamatsum/nvim-cursorline") -- podświetlanie identycznych słów

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
  -- use("phaazon/hop.nvim")
  -- use("ggandor/lightspeed.nvim")

  use("lukas-reineke/indent-blankline.nvim")

  -- use("rmagatti/auto-session")

  use("tpope/vim-repeat")
  use("tpope/vim-surround")
  use("wellle/targets.vim")
  use("mbbill/undotree")

  -- minimapa :!cargo install --locked code-minimap
  -- use({ "wfxr/minimap.vim", run = "cargo install --locked code-minimap" })

  -- use("vim-scripts/YankRing.vim")

  -- statusline
  use("hoob3rt/lualine.nvim")
  use("romgrk/barbar.nvim")
  -- use "akinsho/nvim-bufferline.lua"
  use({ "glepnir/dashboard-nvim" })

  use("jamessan/vim-gnupg") -- szyfrowanie

  -- markdown
  use("folke/zen-mode.nvim")
  -- use("junegunn/goyo.vim")
  -- use("junegunn/limelight.vim")
  use("dhruvasagar/vim-table-mode")
  use("vimwiki/vimwiki")
  use("junegunn/vim-markdown-toc")
  -- use("instant-markdown/vim-instant-markdown")
  -- use("oberblastmeister/neuron.nvim")

  use("dhruvasagar/vim-dotoo")

  use("folke/todo-comments.nvim")
  use("folke/trouble.nvim")

  -- use "liuchengxu/vim-which-key"

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

api.nvim_exec([[colorscheme everforest]], false)
-- cmd([[colorscheme solarized8_flat]])

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
require("funkcje")
require("komendy")
-- funkcje, komendy }}}
-- ustawienia pluginów {{{
require("plugins/barbar")
require("plugins/cheatsheet")
require("plugins/compe")
require("plugins/dashboard")
require("plugins/formatter")
require("plugins/gitsigns")
require("plugins/gnupg")
require("plugins/indent-blankline")
require("plugins/kommentary")
require("plugins/lualine")
require("plugins/minimap")
require("plugins/nvim-tree")
require("plugins/nvim-web-devicons")
require("plugins/pears")
require("plugins/telescope")
require("plugins/todo-comments")
require("plugins/trouble")
require("plugins/vim-colorscheme-manager")
require("plugins/vim-dotoo")
require("plugins/vimwiki")
require("plugins/zenmode")
-- require("plugins/auto-session")
-- require("plugins/bufferline")
-- require("plugins/hop")
-- require("plugins/instant-markdown")
-- require("plugins/lightspeed")
-- require("plugins/luasnip")
-- require("plugins/luatab")
-- require("plugins/neuron")
-- require("plugins/treesitter")
-- ustawienia pluginów }}}
-- {{{ mapowanie klawiszy
require("mappings")
-- mapowanie klawiszy }}}
require("local")
