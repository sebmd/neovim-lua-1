-- Aktualizacja 2022-01-22 14:27:08
vimrc_version = "2.5"
--
-- <spacja>v - przeszukiwanie katalogu konfiguracyjnego ~/.config/nvim
--
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
require("plugins/toggleterm")
require("plugins/treesitter")
require("plugins/trouble")
require("plugins/vim-colorscheme-manager")
require("plugins/vim-dotoo")
require("plugins/vim-oscyank")
require("plugins/vim-vsnip")
require("plugins/vimwiki")
require("plugins/which-key")
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
