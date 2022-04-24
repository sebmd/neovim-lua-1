-- settings.lua
-- Więcej o ustawieniach ':options'
-- Aliasy
local opt = vim.opt -- global
local wo = vim.wo -- local to window
local bo = vim.bo -- local to buffer
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn -- to call Vim functions e.g. fn.bufnr()
local g = vim.g -- a table to access global variables
local api = vim.api
-- Ustawienia
-- opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
opt.showtabline = 1 -- 0 nie pokazuje; 1 pokazuje jeśli są karty (tab), 2 zawsze pokazuje górną belkę
wo.conceallevel = 0 -- sprawia, że znaki `` są widzialne w plikach Markdown
bo.textwidth = 100 -- szerokość linii
wo.colorcolumn = "+1"
wo.cursorline = true -- wyróżnia bieżącą linię
bo.fileencoding = "utf-8" -- the encoding written to a file
bo.fileformat = "unix"
opt.encoding = "utf-8" -- Set default encoding to UTF-8
wo.foldcolumn = "1"
wo.foldmethod = "marker"
-- opt.foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
-- opt.foldmethod = "indent"
-- opt.foldenable = false
opt.title = true -- set the title of window to the value of the titlestring
opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
opt.pumheight = 10 -- pop up menu height
opt.autoread = true
opt.autochdir = true
opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
wo.spell = false
opt.backspace = { "indent", "eol", "start" }
opt.clipboard = "unnamedplus" -- dostęp do schowka systemowego
opt.completeopt = { "menuone", "noselect" }
-- se completeopt=menuone,longest,noselect
-- se completeopt=menuone,noinsert,noselect
-- opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
opt.whichwrap:append("<,>,h,l")
bo.formatoptions = "l"
opt.hidden = true -- required to keep multiple buffers and open multiple buffers
opt.hlsearch = true -- Highlight found searches
opt.ignorecase = true -- ignoruje wielkość znaków
opt.inccommand = "split" -- Get a preview of replacements
opt.incsearch = true -- Shows the match while typing
opt.joinspaces = false -- No double spaces with join
wo.linebreak = true -- Stop words being broken on wrap
opt.list = true -- Show some invisible characters
wo.number = true -- wyświetlanie numerów linii
wo.relativenumber = false -- wyświetlanie relatywnych numerów linii
opt.numberwidth = 5 -- ustawia szerokość kolumny numerowania linii
opt.scrolloff = 4 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context
bo.tabstop = 4 -- number of visual spaces per TAB
bo.softtabstop = 4 -- number of spaces in tab when editing
bo.shiftwidth = 4 -- number of spaces to use for autoindent
bo.expandtab = true -- expand tab to spaces so that tabs are spaces
opt.shiftround = true -- Round indent
opt.showmode = false -- Don't display mode
wo.signcolumn = "yes:1" -- always show signcolumns
opt.smartcase = true -- Do not ignore case with capitals
bo.smartindent = true -- Insert indents automatically
bo.spelllang = "pl"
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.termguicolors = true -- You will have bad experience for diagnostic messages when it's default 4000.
opt.timeoutlen = 500 -- czas w milisekundach na wprowadzenie skrótu klawiszowego, ma znaczenie przy sekwencjach np. <leader>sW
opt.updatetime = 300 -- don't give |ins-completion-menu| messages.
opt.lazyredraw = true -- szybciej wykonuje makra
wo.wrap = false -- zawijanie linii
opt.wildmenu = true
opt.wildmode = "longest:full,full"
-- opt.wildmode = "list:longest,full"
bo.swapfile = false -- tworzenie pliku swap
opt.backup = false -- creates a backup file
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- opt.undodir = CACHE_PATH .. "/undo" -- set an undo directory
-- opt.undodir = "$HOME/.config/nvim/undo" -- set an undo directory
-- opt.undodir = utils.join_paths(get_cache_dir(), "undo"), -- set an undo directory
opt.undofile = true -- enable persistent undo
opt.undolevels = 1000
-- opt.shada = "!,'100,<50,s10,h"
-- opt.viminfo = "'100,n$HOME/.local/share/nvim/viminfo/viminfo"
-- opt.viewdir = "$HOME/.local/share/nvim/view//"
-- opt.directory = "$HOME/.local/share/nvim/swap//"
opt.path:remove("/usr/include")
opt.path:append("**")
opt.listchars = "nbsp:⦸,tab:▸ ,eol:¬,extends:»,precedes:«,trail:•" -- eol ↲
opt.showbreak = "↪"
opt.fillchars:append({ eob = " " }) -- usuwa znak ~ na końcu bufora
opt.tags:append("./tags,./../tags,./../../tags,./../../../tags,tags")
-- opt.laststatus = 2 -- przeniesione do konfiguracji lualine.lua
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

-- api.nvim_command([[ autocmd ColorScheme * highlight Search ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan ]])

-- Use spelling for markdown files ‘]s’ to find next, ‘[s’ for previous, 'z=‘ for suggestions when on one.
-- Source: http:--thejakeharding.com/tutorial/2012/06/13/using-spell-check-in-vim.html
api.nvim_exec(
  [[
    augroup markdownSpell
        autocmd!
        autocmd FileType markdown,md,txt setlocal spell spelllang=pl
        autocmd BufRead,BufNewFile *.md,*.gpg.md,*.txt,*.markdown setlocal spell spelllang=pl
    augroup END
]],
  false
)

cmd("au BufNewFile,BufReadPost *.gpg.md set filetype=markdown")
cmd("au BufNewFile,BufReadPost *.md set filetype=markdown")

-- automatycznie odświerza pliki
api.nvim_exec(
  [[
    autocmd FocusGained,BufEnter,CursorHold ~/Notes/*.md set autoread
    autocmd FocusGained,BufEnter,CursorHold ~/Notes/*.md :checktime
]],
  false
)

-- wchodzi w tryb INSERT przy utowrzeniu nowego pliku typu Markdown
cmd("au! BufNewFile *.md startinsert!")

-- ustawia podświetlenie i czas podświetlenia kopiowanego tekstu
-- cmd("au TextYankPost * lua vim.highlight.on_yank {higroup = IncSearch, on_visual = true, timeout = 150}")
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = true, timeout = 150}")
