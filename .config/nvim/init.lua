-- Aktualizacja 2022-01-01 15:06:23
vimrc_version = "2.4"
--
-- <spacja>v - przeszukiwanie katalogu konfiguracyjnego ~/.config/nvim
--
-- aliasy
opt = vim.opt -- global
wo = vim.wo -- local to window
bo = vim.bo -- local to buffer
cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
fn = vim.fn -- to call Vim functions e.g. fn.bufnr()
g = vim.g -- a table to access global variables
api = vim.api

-- ustawienia
require("settings")

-- mapowanie klawiszy
require("mappings")

-- funkcje, komendy
require("funkcje")
require("komendy")

-- pluginy
require("plugins")

-- ustawienia pluginów
require("plugins/barbar")
require("plugins/cheatsheet")
require("plugins/cmp-vsnip")
require("plugins/dashboard")
require("plugins/formatter")
require("plugins/fzf-lua")
require("plugins/gitsigns")
require("plugins/gnupg")
require("plugins/indent-blankline")
require("plugins/kommentary")
require("plugins/lualine")
require("plugins/material")
require("plugins/minimap")
require("plugins/neovim-session-manager")
require("plugins/nvim-base16")
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

-- jeśli znajdzie plik ~/.config/nvim/lua/local.lua wczyta jego zawartość
local status_ok, _ = pcall(require, "local")
if not status_ok then
  return
end
