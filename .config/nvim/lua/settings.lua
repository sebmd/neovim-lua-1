-- settings.lua
-- :help options
local opt = vim.opt -- to set options
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn -- to call Vim functions e.g. fn.bufnr()
local g = vim.g -- a table to access global variables
local api = vim.api
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
