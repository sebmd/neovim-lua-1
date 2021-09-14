return require("packer").startup(function()
  -- menadżer pluginów
  use("wbthomason/packer.nvim")

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

  -- menadżer plików
  use({ "ms-jpq/chadtree", run = ":CHADdeps" })
  -- use "kyazdani42/nvim-tree.lua"

  -- komentarze
  use("b3nj5m1n/kommentary")

  -- automatyczne uzupełnianie
  use("hrsh7th/nvim-compe")
  use("hrsh7th/vim-vsnip")
  -- use "L3MON4D3/LuaSnip"

  use("nvim-telescope/telescope-symbols.nvim")

  -- automatyczne zamykanie nawiasów i cudzysłowiów
  use("steelsojka/pears.nvim")

  -- podświetlanie identycznych słów
  use("yamatsum/nvim-cursorline")

  -- polecenia systemu Linux
  use("tpope/vim-eunuch")

  -- formatowanie kodu
  use("mhartington/formatter.nvim")

  -- wyszukiwanie
  use("junegunn/fzf")
  use("junegunn/fzf.vim")

  use("junegunn/vim-peekaboo")

  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  use("nvim-treesitter/nvim-treesitter")

  -- szybkie poruszanie się po pliku
  use("ggandor/lightspeed.nvim")

  use("lukas-reineke/indent-blankline.nvim")

  use("rmagatti/auto-session")

  -- vim-repeat
  use("tpope/vim-repeat")

  -- vim-surround
  use("tpope/vim-surround")

  use("wellle/targets.vim")

  -- minimapa :!cargo install --locked code-minimap
  -- { "wfxr/minimap.vim", run = "cargo install --locked code-minimap" },

  -- undotree
  use("mbbill/undotree")

  -- use "tibabit/vim-templates"

  -- use "vim-scripts/YankRing.vim"

  use("hoob3rt/lualine.nvim")
  --  use "akinsho/nvim-bufferline.lua"
  use("romgrk/barbar.nvim")

  use("glepnir/dashboard-nvim")

  -- szyfrowanie
  use("jamessan/vim-gnupg")

  -- "oberblastmeister/neuron.nvim"

  -- markdown
  use("junegunn/goyo.vim")
  use("junegunn/limelight.vim")
  use("dhruvasagar/vim-table-mode")
  use("vimwiki/vimwiki")
  use("junegunn/vim-markdown-toc")
  use("instant-markdown/vim-instant-markdown")

  -- use "liuchengxu/vim-which-key"

  -- automatyczne podpowiedzi
  -- use "vim-scripts/AutoComplPop"

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
  -- use "flazz/vim-colorschemes"
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
  -- use("joshdick/onedark.vim")
  -- use("navarasu/onedark.nvim")
end)
