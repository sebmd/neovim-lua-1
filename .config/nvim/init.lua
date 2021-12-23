-- Aktualizacja 2021-12-23 12:02:08
vimrc_version = "init.lua: 2.3"
--
-- <spacja>v - przeszukiwanie katalogu konfiguracyjnego ~/.config/nvim
--
opt = vim.opt -- to set options
cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
fn = vim.fn -- to call Vim functions e.g. fn.bufnr()
g = vim.g -- a table to access global variables
api = vim.api
-- pluginy
require("plugins")

-- ustawienia
require("settings")

-- funkcje, komendy
require("funkcje")
require("komendy")

-- ustawienia pluginów
require("plugins/barbar")
require("plugins/cheatsheet")
require("plugins/dashboard")
require("plugins/formatter")
require("plugins/gitsigns")
require("plugins/gnupg")
require("plugins/indent-blankline")
require("plugins/kommentary")
require("plugins/lualine")
require("plugins/material")
require("plugins/minimap")
require("plugins/nvim-cmp")
require("plugins/nvim-tree")
require("plugins/nvim-web-devicons")
require("plugins/pears")
require("plugins/telescope")
require("plugins/todo-comments")
require("plugins/treesitter")
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

-- mapowanie klawiszy
require("mappings")

-- jeśli znajdzie plik ~/.config/nvim/lua/local.lua wczyta jego zawartość
local status_ok, _ = pcall(require, "local")
if not status_ok then
  return
end
