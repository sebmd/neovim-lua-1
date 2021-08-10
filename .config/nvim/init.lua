-- Aktualizacja 2021-08-10 15:37:16
vimrc_version = "Wersja init.lua: v1.2"
-- {{{ pluginy
require("paq-nvim")({
  -- menadżer pluginów
  "savq/paq-nvim",

  -- git
  "lewis6991/gitsigns.nvim", -- integracja git
  -- "rhysd/git-messenger.vim",

  -- menadżer plików
  "ms-jpq/chadtree",
  -- "kyazdani42/nvim-tree.lua",

  -- komentarze
  "b3nj5m1n/kommentary",

  -- automatyczne uzupełnianie
  "hrsh7th/nvim-compe",
  "hrsh7th/vim-vsnip",
  -- "L3MON4D3/LuaSnip",

  -- automatyczne zamykanie nawiasów i cudzysłowiów
  "steelsojka/pears.nvim",

  -- polecenia systemu Linux
  "tpope/vim-eunuch",

  -- formatowanie kodu
  "mhartington/formatter.nvim",

  -- wyszukiwanie
  "junegunn/fzf",
  "junegunn/fzf.vim",
  "nvim-telescope/telescope.nvim",
  "nvim-telescope/telescope-fzy-native.nvim",

  "nvim-treesitter/nvim-treesitter",

  -- szybkie poruszanie się po pliku
  "ggandor/lightspeed.nvim",

  "lukas-reineke/indent-blankline.nvim",

  "rmagatti/auto-session",

  -- vim-repeat
  "tpope/vim-repeat",

  -- vim-surround
  "tpope/vim-surround",

  "wellle/targets.vim",

  -- minimapa :!cargo install --locked code-minimap
  { "wfxr/minimap.vim", run = "cargo install --locked code-minimap" },

  -- undotree
  "mbbill/undotree",

  -- "tibabit/vim-templates",

  -- "vim-scripts/YankRing.vim",

  "hoob3rt/lualine.nvim",

  "glepnir/dashboard-nvim",

  -- szyfrowanie
  "jamessan/vim-gnupg",

  -- markdown
  "junegunn/goyo.vim",
  "junegunn/limelight.vim",
  "dhruvasagar/vim-table-mode",
  "vimwiki/vimwiki",
  "junegunn/vim-markdown-toc",
  "instant-markdown/vim-instant-markdown",
  "junegunn/vim-markdown-toc",
  -- automatyczne podpowiedzi
  -- "vim-scripts/AutoComplPop",

  -- biblioteki, dodatki
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
  "kyazdani42/nvim-web-devicons",
  "ryanoasis/vim-devicons",

  -- kolory
  "rakr/vim-one",
  "lifepillar/vim-solarized8",
  "ayu-theme/ayu-vim",
  "gruvbox-community/gruvbox",
  "joshdick/onedark.vim",
  "kristijanhusak/vim-hybrid-material",
  "lighthaus-theme/vim-lighthaus",
  "sainnhe/everforest",
  "sainnhe/gruvbox-material",
  "srcery-colors/srcery-vim",
  "zekzekus/menguless",
  "whatyouhide/vim-gotham",
})
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
opt.timeoutlen = 500 -- time to wait for a mapped sequence to complete (in milliseconds)
opt.showtabline = 0 -- don't show tabs - 2 always show tabs
opt.conceallevel = 0 -- so that `` is visible in markdown files
opt.textwidth = 100
opt.colorcolumn = "+1"
opt.cursorline = true -- highlight the current line
opt.title = true -- set the title of window to the value of the titlestring
opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
opt.pumheight = 10 -- pop up menu height
opt.autoread = true
opt.swapfile = false -- creates a swapfile
opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
opt.spell = false
opt.autochdir = true
opt.backup = false -- creates a backup file
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.fileencoding = "utf-8" -- the encoding written to a file
opt.fileformat = "unix"
opt.backspace = { "indent", "eol", "start" }
opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
opt.completeopt = { "menuone", "noselect" }
-- se completeopt=menuone,longest,noselect
-- se completeopt=menuone,noinsert,noselect
opt.encoding = "utf-8" -- Set default encoding to UTF-8
opt.expandtab = true -- Use spaces instead of tabs
opt.foldcolumn = "1"
opt.foldmethod = "marker"
-- opt.foldmethod = "manual" -- folding, set to "expr" for treesitter based folding
-- opt.foldmethod = "indent"
-- opt.foldenable = false
-- opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
opt.whichwrap:append("<,>,h,l")
opt.formatoptions = "l"
opt.hidden = true -- required to keep multiple buffers and open multiple buffers
opt.hlsearch = true -- Highlight found searches
opt.ignorecase = true -- Ignore case
opt.inccommand = "split" -- Get a preview of replacements
opt.incsearch = true -- Shows the match while typing
opt.joinspaces = false -- No double spaces with join
opt.linebreak = true -- Stop words being broken on wrap
opt.list = true -- Show some invisible characters
opt.number = true -- Show line numbers
opt.relativenumber = false -- set relative numbered lines
opt.numberwidth = 5 -- Make the gutter wider by default
opt.scrolloff = 4 -- Lines of context
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.showmode = false -- Don't display mode
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes:1" -- always show signcolumns
opt.smartcase = true -- Do not ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = "pl"
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = true -- You will have bad experience for diagnostic messages when it's default 4000.
opt.updatetime = 300 -- don't give |ins-completion-menu| messages.
opt.lazyredraw = true -- lz - szybciej wykonuje makra
opt.wrap = false -- display lines as one long line
opt.wildmenu = true
opt.wildmode = "longest:full,full"
-- opt.wildmode = "list:longest,full"
-- opt.undodir = CACHE_PATH .. "/undo" -- set an undo directory
-- opt.undodir = "$HOME/.config/nvim/undo" -- set an undo directory
opt.undofile = true -- enable persistent undo
opt.undolevels = 1000
opt.listchars = "nbsp:⦸,tab:▸ ,eol:¬,extends:»,precedes:«,trail:•" -- eol ↲
opt.showbreak = "↪"
opt.tags:append("./tags,./../tags,./../../tags,./../../../tags,tags")
opt.viminfo = "'100,n$HOME/.local/share/nvim/viminfo/viminfo"
opt.viewdir = "$HOME/.local/share/nvim/view"
opt.directory = "~/.local/share/nvim/swap//"
-- opt.path-="/usr/include"
opt.path:remove("/usr/include")
opt.path:append("**")
opt.laststatus = 2
opt.complete:append("kspell") -- Ctrl+p w trybie INSERT podpowiedzi ze słownika wymaga włączenia trybu spell

opt.mouse = "a" -- allow the mouse to be used in neovim
opt.wildignore = "*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store,*/node_modules/*"

-- cmd('let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"')
-- cmd('let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"')

g.netrw_liststyle = 3 -- Tree style Netrw

g.GPGPreferSymmetric = 0
g.GPGUseAgent = 1
g.GPGPreferArmor = 1
g.GPGPreferSign = 1
-- ID klucza pobiera ze zmienne systemowej $GPG_ID należy ustawić ją Write swojej powłoce systemowej
g.GPGDefaultRecipients = "[$GPG_ID]"
g.GPGFilePattern = "*{gpg,asc,gpg.md}"

-- Colourscheme config
g.everforest_background = "hard"
g.everforest_enable_italic = 1
g.everforest_diagnostic_text_highlight = 1
g.everforest_diagnostic_virtual_text = "colored"
g.everforest_current_word = "bold"

g.ayucolor = "mirage"

-- Load the colorscheme
cmd([[colorscheme everforest]])
-- cmd([[colorscheme ayu]])
-- cmd([[colorscheme gotham]])
-- cmd([[colorscheme solarized8_flat]])

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

-- RgNotes
-- Modyfikacja komendy Rg dla $NOTES_DIR z pluginem FZF.vim zmienna $NOTES_DIR ustawiona w pliku ~/.config/vars
-- Przeszukiwanie zawartości plików
api.nvim_exec(
  [[
    function! RgNotes(query, fullscreen)
        let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s $NOTES_DIR || true'
        let initial_command = printf(command_fmt, shellescape(a:query))
        let reload_command = printf(command_fmt, '{q}')
        let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
        call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
    endfunction
]],
  false
)

-- Funkcja Tme() wyświetla bieżącą datę i godzinę
api.nvim_exec(
  [[
function! Time()
    echom strftime("- Teraz jest: %F %T -")
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

-- cmd("abbr ga GA")
-- cmd("abbr gp GP")
-- cmd("abbr x Write<cr>:q<cr>")
-- cmd("abbr w Write<cr>")

-- map("c", "gp", "GP")
-- map("c", "ga", "GA")
-- map("c", "x", "Write<cr>:q<cr>")
-- map("c", "w", "Write<cr>")

-- komendy
cmd("command! VimrcVersion :lua VimrcVersion()<cr>")
cmd("command! GP call GP()")
cmd("command! GA call GA()")
cmd("command! RevBackground call RevBackground()")
cmd("command! UpdateVimrc call UpdateVimrc()")
cmd("command! PI PaqInstall")
cmd("command! Write call Write()")
cmd("command! Time call Time()")
cmd("command! -bang -nargs=* RgNotes call RgNotes(<q-args>, <bang>0)")
-- cmd('command! VimrcVersion :echo "Wersja vimrc:  . g:vimrc_version"')
-- command! VimrcVersion :echo "Wersja vimrc: " . g:vimrc_version
-- funkcje, komendy }}}
-- ustawienia pluginów {{{
-- kommentary
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

-- minimap
g.minimap_width = 10
g.minimap_auto_start = 0
-- g.minimap_auto_start_win_enter = 1

-- vimwiki
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

--
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

require("pears").setup(function(conf)
  conf.pair("{", "}")
  conf.expand_on_enter(false)
end)

-- luasnip
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
-- inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

-- snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
-- snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

-- imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
-- smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

local sorters, actions, previewers =
  require("telescope.sorters"), require("telescope.actions"), require("telescope.previewers")

-- Load Telescope extensions
require("telescope").load_extension("fzy_native")
-- Telescope Global remapping
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
    -- Fast, fast, really fast sorter
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
  },
  pickers = {
    buffers = {
      sort_lastused = true,
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

require("telescope").load_extension("fzy_native")

-- Lightspeed remap
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

-- dashboard-nvim
vim.g.dashboard_disable_at_vimenter = 0
vim.g.dashboard_default_executive = "telescope"

-- gitsigns setup
require("gitsigns").setup({
  numhl = true,
  signcolumn = true,
  keymaps = {
    -- Default keymap options
    noremap = true,

    ["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'" },
    ["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'" },

    ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ["v <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ["v <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ["n <leader>hR"] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ["n <leader>hp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    -- ["n <leader>hn"] = '<cmd>lua require"gitsigns".next_hunk()<CR>',
    ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',

    -- Text objects
    ["o ih"] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
    ["x ih"] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
  },
})

-- Hop
--[[ require("hop").setup({
    reverse_distribution = true,
})
map("n", "<leader>h", "<cmd>lua require'hop'.hint_words()<cr>")
map("n", "<leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
map("v", "<leader>h", "<cmd>lua require'hop'.hint_words()<cr>")
map("v", "<leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
 ]]
-- Session
local sessionopts = {
  log_level = "info",
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = true,
  auto_session_suppress_dirs = nil,
}

require("auto-session").setup(sessionopts)

-- GnuPG
local GPG_ID = os.getenv("GPG_ID")

-- Setup treesitter
local ts = require("nvim-treesitter.configs")
ts.setup({ ensure_installed = "maintained", highlight = { enable = true } })

-- Compe setup start
require("compe").setup({
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = "enable",
  throttle_time = 80,
  source_timeout = 200,
  resolve_timeout = 800,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = {
    border = { "", "", "", " ", "", "", "", " " }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  },
  source = {
    path = true,
    buffer = true,
    calc = true,
    nvim_lua = true,
    vsnip = true,
    luasnip = true,
  },
})

local t = function(str)
  return api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col(".") - 1
  if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
    return true
  else
    return false
  end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t("<C-n>")
  elseif check_back_space() then
    return t("<Tab>")
  else
    return vim.fn["compe#complete"]()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t("<C-p>")
  else
    return t("<S-Tab>")
  end
end

api.nvim_set_keymap("i", "<CR>", "compe#confirm({ 'keys': '<CR>', 'select': v:true })", { expr = true })
api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", { expr = true })
api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })

-- End Compe related setup

-- Prettier function for formatter
local prettier = function()
  return {
    exe = "prettier",
    args = { "--stdin-filepath", api.nvim_buf_get_name(0), "--double-quote" },
    stdin = true,
  }
end

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
-- ustawienia pluginów }}}
-- {{{ lualine
-- Eviline config for lualine
local lualine = require("lualine")

-- Color table for highlights
local colors = {
  bg = "#202328",
  fg = "#bbc2cf",
  yellow = "#ECBE7B",
  cyan = "#008080",
  darkblue = "#081633",
  green = "#98be65",
  orange = "#FF8800",
  violet = "#a9a1e1",
  magenta = "#c678dd",
  blue = "#51afef",
  red = "#ec5f67",
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand("%:p:h")
    local gitdir = vim.fn.finddir(".git", filepath .. ";")
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = "",
    section_separators = "",
    icons_enabled = true,
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_v = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left({
  -- mode component
  function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [""] = colors.blue,
      V = colors.blue,
      c = colors.violet,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [""] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ["r?"] = colors.cyan,
      ["!"] = colors.red,
      t = colors.red,
    }
    api.nvim_command("hi! LualineMode guifg=" .. mode_color[vim.fn.mode()] .. " guibg=" .. colors.bg)
    return "▊"
  end,
  color = "LualineMode",
  left_padding = 0,
})

ins_left({
  -- filesize component
  function()
    local function format_file_size(file)
      local size = vim.fn.getfsize(file)
      if size <= 0 then
        return ""
      end
      local sufixes = { "b", "k", "m", "g" }
      local i = 1
      while size > 1024 do
        size = size / 1024
        i = i + 1
      end
      return string.format("%.1f%s", size, sufixes[i])
    end
    local file = vim.fn.expand("%:p")
    if string.len(file) == 0 then
      return ""
    end
    return format_file_size(file)
  end,
  condition = conditions.buffer_not_empty,
})

ins_left({
  "filename",
  condition = conditions.buffer_not_empty,
  color = { fg = colors.yellow, gui = "bold" },
})

ins_left({ "location" })

ins_left({ "progress", color = { fg = colors.fg, gui = "bold" } })

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left({
  function()
    return "%="
  end,
})

-- Add components to right sections
ins_right({
  "o:encoding", -- option component same as &encoding in viml
  upper = true, -- I'm not sure why it's upper case either ;)
  condition = conditions.hide_in_width,
  color = { fg = colors.green, gui = "bold" },
})

ins_right({
  "fileformat",
  upper = true,
  icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.green, gui = "bold" },
})

ins_right({
  "branch",
  icon = "",
  condition = conditions.check_git_workspace,
  color = { fg = colors.violet, gui = "bold" },
})
-- mod_icon = "                  "
ins_right({
  "diff",
  -- Is it me or the symbol for modified us really weird
  symbols = { added = " ", modified = " ", removed = " " },
  color_added = colors.green,
  color_modified = colors.orange,
  color_removed = colors.red,
  condition = conditions.hide_in_width,
})

ins_right({
  "hostname",
})

ins_right({
  function()
    return "▊"
  end,
  color = { fg = colors.blue },
  right_padding = 0,
})

-- Now don't forget to initialize lualine
lualine.setup(config)
--- lualine }}}
-- {{{ mapowanie klawiszy
-- Map leader to space
g.mapleader = " "

-- wejście do trybu COMMAND
map("n", "<leader>;", ":", { silent = false })

map("n", "<left>", ':echom "Użyj klawisza h"<cr>h')
map("n", "<down>", ':echom "Użyj klawisza j"<cr>j')
map("n", "<up>", ':echom "Użyj klawisza k"<cr>k')
map("n", "<right>", ':echom "Użyj klawisza l"<cr>l')

map("c", "<c-j>", "<down>")
map("c", "<c-k>", "<up>")
map("c", "<c-h>", "<left>")
map("c", "<c-l>", "<right>")

-- Obsługa pluginu vim-surround
-- <leader>sw czeka na wprowadzenie znaku, którym otoczy wyraz
-- <leader>sW czeka na wprowadzenie znaku, którym otoczy WYRAZ
-- <leader>sp czeka na wprowadzenie znaku, który otoczy paragraf
-- <leader>ss czeka na wprowadzenie znaku, którym otoczy linię
-- <leader>sd czeka na wprowadzenie znaku, którym zostanie usunięty
map("n", "<leader>sw", ":norm ysiw")
map("n", "<leader>sW", ":norm ysiW")
map("n", "<leader>sp", ":norm ysip")
map("n", "<leader>ss", ":norm yss")
map("n", "<leader>sd", ":norm ds")

-- podział okna pionowy i poziomy
map("n", "<leader>vs", "<cmd>vs<cr>")
map("n", "<leader>sp", "<cmd>sp<cr>")

-- poruszanie się w trybie INSERT za pomocą skrótów <c-h,j,k,l>
map("i", "<c-h>", "<left>")
map("i", "<c-j>", "<down>")
map("i", "<c-k>", "<up>")
map("i", "<c-l>", "<right>")

-- poruszanie się pomiędzy oknami za pomocą <c-h,j,k,l>
map("n", "<c-h>", "<c-w><c-h>")
map("n", "<c-j>", "<c-w><c-j>")
map("n", "<c-k>", "<c-w><c-k>")
map("n", "<c-l>", "<c-w><c-l>")

-- map("n", "<Enter>", "o<Esc>")
-- map("n", "<space>", "i<space><C-c>l")

map("n", "qq", ":q<cr>")

map("n", "j", "gj")
map("n", "k", "gk")

map("n", "gj", '<cmd>lua require"gitsigns.actions".next_hunk()<CR>')
map("n", "gk", '<cmd>lua require"gitsigns.actions".prev_hunk()<CR>')

-- przemapowanie klawiszy otwierających i zamykających zagnieżdżenia
map("n", "zn", "zm")
map("n", "zm", "zn")

map("n", "gh", "0")
map("n", "gl", "$")

-- usuwa od kursora do początku / końca linii
map("n", "dh", "xd0")
map("n", "dl", "d$")

map("n", "<leader>,", "<cmd>bprevious<cr>")
map("n", "<leader>.", "<cmd>bnext<cr>")

map("n", "<leader>d", "<cmd>bdelete<cr>")

map("n", "<leader>th", ":nohl<cr>", { silent = true })
map("n", "<leader>u", ":UndotreeToggle<cr>")

map("n", "<leader>ss", ":<C-u>SessionSave<CR>")
map("n", "<leader>sl", ":<C-u>SessionLoad<CR>")

map("n", "<leader>q", ":q<CR>")

-- Otwiera plik konfiguracyjny Neovim
map("n", "<Leader>v", "<cmd>e $MYVIMRC<CR>")

-- Source nvimrc file
map("n", "<Leader>sv", ":luafile $MYVIMRC<CR>")

-- Quick new file
-- map("n", "<Leader>n", "<cmd>enew<CR>")

-- Menadżer plików NvimTree
-- map("n", "<Leader>n", "<cmd>NvimTreeToggle<CR>")

-- Menadzęr plików CHADtree
map("n", "<Leader>n", "<cmd>CHADopen<CR>")

-- Easy select all of file
map("n", "<Leader>sa", "ggVG<c-$>")

-- Make visual yanks place the cursor back where started
map("v", "y", "ygv<Esc>")

-- Zapisanie pliku
map("n", "<Leader>w", "<cmd>:Write<CR>")

-- Tab to switch buffers in Normal mode
-- map("n", "<Tab>", "<cmd>bnext<CR>")
-- map("n", "<S-Tab>", "<cmd>bprevious<CR>")
map("n", "<Tab>", "<cmd>e #<CR>")

-- More molecular undo of text
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", "!", "!<c-g>u")
map("i", "?", "?<c-g>u")
map("i", ";", ";<c-g>u")
map("i", ":", ":<c-g>u")

-- Keep search results centred
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- łączy linie pozostawiając kursor w obecnej pozycji
map("n", "J", "mzJ`z")

-- kopiuje tekst od kursora do końca linii
map("n", "Y", "y$")

-- wyrównanie paragrafu '=ip' dodatkowo zawija tekst na długośc 'textwidth' znaków 'gqap'
map("n", "<leader>a", "=ip gqap")

-- Line bubbling
-- Use these two if you don't have prettier
--map('n'), '<c-j>', '<cmd>m .+1<CR>==')
--map('n,) <c-k>', '<cmd>m .-2<CR>==')
map("n", "<c-j>", "<cmd>m .+1<CR>", { silent = true })
map("n", "<c-k>", "<cmd>m .-2<CR>", { silent = true })
map("i", "<c-j> <Esc>", "<cmd>m .+1<CR>==gi", { silent = true })
map("i", "<c-k> <Esc>", "<cmd>m .-2<CR>==gi", { silent = true })
map("v", "<c-j>", "<cmd>m +1<CR>gv=gv", { silent = true })
map("v", "<c-k>", "<cmd>m -2<CR>gv=gv", { silent = true })

-- Simpler increment/decrement integers
map("n", "+", "<C-a>", { silent = true })
map("v", "+", "<C-a>", { silent = true })
map("n", "-", "<C-x>", { silent = true })
map("v", "-", "<C-x>", { silent = true })

--Auto close tags
map("i", ",/", "</<C-X><C-O>")

-- ESC wyłącza wyróżnianie szukanego słowa
map("n", "<esc>", ":noh<cr><esc>", { silent = true })

-- Telescoope
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
map("n", "<leader>b", '<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>')
map("n", "<leader>j", '<cmd>lua require("telescope.builtin").help_tags()<cr>')
map(
  "n",
  "<leader>f",
  '<cmd>lua require("telescope.builtin").file_browser(require("telescope.themes").get_dropdown({}))<cr>'
)
map("n", "<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
map(
  "n",
  "<leader>i",
  '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_dropdown({}))<cr>'
)
map("n", "<leader>t", '<cmd>lua require("telescope.builtin").tags(require("telescope.themes").get_dropdown({}))<cr>')
-- mapowanie klawiszy }}}
