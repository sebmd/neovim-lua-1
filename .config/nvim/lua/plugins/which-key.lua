local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local setup = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  window = {
    border = "rounded", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    -- v = { "j", "k" },
  },
}

local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end
local toggle_vsplit = function()
  local vsplit = Terminal:new({ direction = "vertical" })
  return vsplit:toggle()
end
local toggle_hsplit = function()
  local hsplit = Terminal:new({ direction = "horizontal" })
  return hsplit:toggle()
end
local toggle_lazygit = function()
  local lazygit = Terminal:new({ cmd = "lazygit", direction = "float" })
  return lazygit:toggle()
end
-- b Bufory
-- c CD
-- d Dashboard
-- D dot.files
-- f Telescope find files
-- g Git
-- k Kolory
-- m Dokumentacja
-- n NvimTree
-- o Window
-- q Quit
-- r Telescope live grep
-- u UndotreeToggle
-- s Search
-- t Terminal
-- v Neovim config
-- x Save & Quit
-- z Focus (ZenMode)
local mappings = {
  c = { "<cmd>CD<cr>", "CD" },
  d = { "<cmd>Dashboard<cr>", "Dashboard" },
  f = { "<cmd>Telescope find_files<cr>", "Telescope Find Files" },
  k = { "<cmd>Kolory<cr>", "Kolory" },
  m = { "<cmd>Dokumentacja<cr>", "Dokumentacja" },
  n = { "<cmd>NvimTreeToggle<cr>", "NvimTree" },
  q = { "<cmd>qa<cr>", "Quit" },
  r = { "<cmd>Telescope live_grep<cr>", "Telescope Live Grep" },
  u = { "<cmd>UndotreeToggle<cr>", "UndotreeToggle" },
  v = { "<cmd>lua search_nvim_dotfiles()<cr>", "Edit config" },
  w = { "<cmd>Write<cr>", "Save" },
  x = { "<cmd>Write<cr>:q<cr>", "Save & Quit" },
  ["?"] = { "<cmd>Cheatsheet<cr>", "Cheatsheet" },
  R = {
    name = "Różności",
    o = { "<cmd>only<cr>", "Pozostawia tylko otwarty okno w przypadku podziału." },
    s = { "<cmd>source %<cr>", "source %" },
    r = { "<cmd>!./%<cr>", "shell %" },
  },
  b = {
    name = "Bufory",
    b = { "<cmd>FzfLua buffers<cr>", "FZF Buffers" },
    c = { "<cmd>BufferPick<cr>", "BufferPick" },
    D = { "<cmd>BufferCloseAllButCurrent<cr>", "BufferCloseAllButCurrent" },
    d = { "<cmd>BufferDelete<cr>", "BufferDelete" },
    l = { "<cmd>BufferLast<cr>", "BufferLast" },
    n = { "<cmd>BufferNext<cr>", "BufferNext" },
    P = { "<cmd>BufferPin<cr>", "BufferPin" },
    p = { "<cmd>BufferPrevious<cr>", "BufferPrevious" },
    s = { "<cmd>BufferOrderByBufferNumber<cr>", "BufferOrderByBufferNumber" },
  },
  t = {
    name = "Terminal",
    f = { toggle_float, "Floating Terminal" },
    h = { toggle_hsplit, "Terminal podział poziomy" },
    l = { toggle_lazygit, "LazyGit" },
    t = { "<cmd>ToggleTerm<cr>", "Split Below" },
    v = { toggle_vsplit, "Terminal podział pionowy" },
  },
  D = {
    name = "dot.files",
    a = { "<cmd>e ~/.config/aliases<cr>", "~/.config/aliases" },
    b = { "<cmd>e ~/.bashrc<cr>", "~/.bashrc" },
    c = { "<cmd>e ~/.config/awesome/rc.lua<cr>", "~/.config/awesome/rc.lua" },
    d = { "<cmd>e ~/.config/alacritty/alacritty.yml<cr>", "~/.config/alacritty/alacritty.yml" },
    v = { "<cmd>lua search_nvim_dotfiles()<cr>", "Edit config" },
    e = { "<cmd>lua search_dotfiles()<cr>", "Przeszukuje katalog ~/git/github/dotfiles" },
  },
  g = {
    name = "Git",
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
    d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff" },
    g = { toggle_lazygit, "Lazygit" },
    j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
    k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
    o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
    u = { "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk" },
  },
  o = {
    name = "Window",
    ["-"] = { "<C-W>s", "split-window-below" },
    ["2"] = { "<C-W>v", "layout-double-columns" },
    ["="] = { "<C-W>=", "balance-window" },
    ["?"] = { "Windows", "fzf-window" },
    ["|"] = { "<C-W>v", "split-window-right" },
    c = { "<C-W>c", "close-window" },
    H = { "<C-W>5<", "expand-window-left" },
    h = { "<C-W>h", "window-left" },
    j = { "<C-W>j", "window-below" },
    J = { "resize +5", "expand-window-below" },
    k = { "<C-W>k", "window-up" },
    K = { "resize -5", "expand-window-up" },
    L = { "<C-W>5>", "expand-window-right" },
    l = { "<C-W>l", "window-right" },
    s = { "<C-W>s", "split-window-below" },
    v = { "<C-W>v", "split-window-below" },
    w = { "<C-W>w", "other-window" },
  },
  s = {
    name = "Search",
    c = { "<cmd>Telescope command_history<cr>", "Telescope Command History" },
    f = { "<cmd>Telescope find_files<cr>", "Telescope Find Files" },
    g = { "<cmd>Telescope live_grep<cr>", "Telescope Live Grep" },
    h = { "<cmd>Telescope search_history<cr>", "Telescope Search history" },
    k = { "<cmd>Telescope keymaps<cr>", "Telescope Keymaps" },
    p = { "<cmd>Telescope project<cr>", "Telescope Project" },
    r = { "<cmd>Telescope registers<cr>", "Telescope Registers" },
  },
  z = {
    name = "Focus",
    d = { "<cmd>DestractionFree<cr>", "DestractionFree" },
    t = { "<cmd>Twilight<cr>", "Toggle Twilight" },
    z = { "<cmd>ZenMode<cr>", "Toggle Zen Mode" },
  },
}

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "\\",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

which_key.setup(setup)
which_key.register(mappings, opts)
