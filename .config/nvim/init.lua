-- Aktualizacja 2021-12-23 00:57:41
vimrc_version = "init.lua: 2.3"
--
-- <leader>v - przeszukiwanie katalogu konfiguracyjnego ~/.config/nvim
--
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
local status_ok, local_conf = pcall(require, "local")
if not status_ok then
  return
end
