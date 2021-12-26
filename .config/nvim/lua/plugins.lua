--
-- plugins.lua
-- mechanizm instalacji skopiowany z: https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/plugins.lua
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  -- require("packer").startup(function(use)
  -- menadżer pluginów
  use("wbthomason/packer.nvim")
  -- wyłączony
  use({ "neoclide/coc.nvim", disable = true })

  -- obsługa języka Go - wyłączony
  use({ "fatih/vim-go", disable = true })

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

  -- wyłączony
  use({ "rhysd/git-messenger.vim", disable = true })

  -- obsługa schowka systemowego
  use("Jorengarenar/fauxClip")

  -- menadżer plików
  -- use({ "ms-jpq/chadtree", run = ":CHADdeps" })
  -- use("ms-jpq/chadtree")
  use("kyazdani42/nvim-tree.lua")

  use("b3nj5m1n/kommentary") -- komentarze

  -- automatyczne uzupełnianie
  use({ "neovim/nvim-lspconfig", disable = true })
  use({ "hrsh7th/cmp-nvim-lsp", disable = true })
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")

  use({ "hrsh7th/cmp-vsnip", disable = true })
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

  use({ "nvim-treesitter/nvim-treesitter", disable = false })

  use({ "phaazon/hop.nvim", disable = true }) -- szybkie poruszanie się po pliku
  use({ "ggandor/lightspeed.nvim", disable = true }) -- szybkie poruszanie się po pliku

  use("lukas-reineke/indent-blankline.nvim")

  -- use("rmagatti/auto-session")

  use("tpope/vim-repeat")
  use("tpope/vim-surround")
  use("wellle/targets.vim")
  use("mbbill/undotree")

  -- minimapa :!cargo install --locked code-minimap
  -- use({ "wfxr/minimap.vim", run = "cargo install --locked code-minimap" })

  -- Obsługa rejestrów
  use({ "vim-scripts/YankRing.vim", disable = true })

  -- statusline
  use("hoob3rt/lualine.nvim")
  use({ "romgrk/barbar.nvim", disable = false })
  use({ "akinsho/nvim-bufferline.lua", disable = true }) -- wyłączony
  use({ "glepnir/dashboard-nvim" })

  use("jamessan/vim-gnupg") -- szyfrowanie

  -- markdown
  use("folke/zen-mode.nvim")
  use("dhruvasagar/vim-table-mode")
  use("vimwiki/vimwiki")
  use("junegunn/vim-markdown-toc")
  -- use("instant-markdown/vim-instant-markdown")
  -- use("oberblastmeister/neuron.nvim")

  use("dhruvasagar/vim-dotoo")

  use("folke/todo-comments.nvim")
  use("folke/trouble.nvim")

  -- wyłączony
  use({ "liuchengxu/vim-which-key", disable = true })

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
  -- end)
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
