# Pluginy

<!-- vim-markdown-toc Marked -->

* [Dodanie pluginu](#dodanie-pluginu)
* [Włączenie pluginu](#włączenie-pluginu)
* [Włączone pluginy](#włączone-pluginy)
	* [Automatyczne podpowiedzi i snipeety](#automatyczne-podpowiedzi-i-snipeety)
	* [Narzędzia i biblioteki](#narzędzia-i-biblioteki)
	* [Kolory](#kolory)
* [Wyłączone](#wyłączone)

<!-- vim-markdown-toc -->

## Dodanie pluginu

Menadżerem pluginów jest `packer.nvim` więcej informacji można znaleźć na stronie
https://github.com/wbthomason/packer.nvim

Dodajemy do pliku `~/.config/nvim/lua/plugins.lua`

```lua
use("lewis6991/gitsigns.nvim") -- integracja git
```

Następnie tworzymy plik konfiguracyjny `~/.config/nvim/lua/plugins/gitsigns.lua` i tam umieszczamy
konfigurację dla pluginu.

Teraz w pliku `~/.config/nvim/init.lua` umieszczamy linię, która wczyta plik konfiguracyjny:

```lua
require("plugins/gitsigns")
```

Ostatnim etapem jest instalacji pluginu za pomocą polecenia `:PI` lub `:PackerInstall`, wcześniej
należy wczytać ponownie plik `plugins.lua` lub ponownie włączyć Neovim.

Wczytanie pliku `plugins.lua`

```vim
:so ~/.config/nvim/lua/plugins.lua
```

## Włączenie pluginu

Część pluginów jest wyłączona, żeby włączyć plugin należy zmienić wartość `disable` na `false`

```lua
use({ "neoclide/coc.nvim", disable = false })
```

Żeby zmiany odniosły skutek, należy ponownie wczytać plik `plugins.lua` lub ponownie włączyć Neovim.

## Włączone pluginy

- [barbar.nvim](Pluginy/barbar-nvim.md) - górny pasek oraz obsługa buforów
- [cheatsheet.nvim](Pluginy/cheatsheet-nvim.md) - szybka pomoc
- [dashboard-nvim](Pluginy/dashboard-nvim.md) - ekran startowy
- [fauxClip](Pluginy/fauxClip.md) - obsługa schowka systemowego
- [formatter.nvim](Pluginy/formatter-nvim.md) - formatowanie składni
- [fzf-lua](Pluginy/fzf-lua.md)
- [fzf.vim](Pluginy/fzf-vim.md) - wyszukiwanie
- [fzf](Pluginy/fzf.md) - wyszukiwanie
- [gitsigns.nvim](Pluginy/gitsigns-nvim.md) - obsługa repozytoriów git
- [indent-blankline.nvim](Pluginy/indent-blankline-nvim.md) - wyróżnianie wcięć linii
- [kommentary](Pluginy/kommentary.md) - komentowanie tekstu za pomocą skrótów klawiszowych
- [lualine](Pluginy/lualine.md) - dolny pasek
- [neovim-session-manager](Pluginy/neovim-session-manager.md)
- [nvim-cursorline](Pluginy/nvim-cursorline.md)
- [nvim-tree.lua](Pluginy/nvim-tree-lua.md) - menadżer plików
- [nvim-web-devicons](Pluginy/nvim-web-devicons.md) - dodatkowe czcionki z symbolami
- [targets.vim](Pluginy/targets-vim.md)
- [telescope-fzf-native.nvim](Pluginy/telescope-fzf-native-nvim.md)
- [telescope-project.nvim](Pluginy/telescope-project-nvim.md)
- [telescope-symbols.nvim](Pluginy/telescope-symbols-nvim.md)
- [telescope.nvim](Pluginy/telescope-nvim.md)
- [toggleterm.nvim](Pluginy/toggleterm-nvim.md)
- [undotree](Pluginy/undotree.md) - drzewo zmian
- [vim-devicons](Pluginy/vim-devicons.md) - dodatkowe czcionki z symbolami
- [vim-dotoo](Pluginy/vim-dotoo.md)
- [vim-eunuch](Pluginy/vim-eunuch.md)
- [vim-gnupg](Pluginy/vim-gnupg.md) - szyfrowanie plików za pomocą GnuPG
- [vim-markdown-toc](Pluginy/vim-markdown-toc.md)
- [vim-oscyank](Pluginy/vim-oscyank.md)
- [vim-peekaboo](Pluginy/vim-peekaboo.md)
- [vim-repeat](Pluginy/vim-repeat.md)
- [vim-surround](Pluginy/vim-surround.md)
- [vim-table-mode](Pluginy/vim-table-mode.md)
- [vimwiki](Pluginy/vimwiki.md) - podręczne Wiki
- [zen-mode.nvim](Pluginy/zen-mode-nvim.md) - tryb skupienia - wyłącza rozpraszacze np. numery linii itp.

### Automatyczne podpowiedzi i snipeety

- [nvim-cmp](Pluginy/nvim-cmp.md)
- [cmp-buffer](Pluginy/cmp-buffer.md)
- [cmp-path](Pluginy/cmp-path.md)
- [cmp-cmdline](Pluginy/cmp-cmdline.md)
- [cmp-vsnip](Pluginy/cmp-vsnip.md)
- [vim-vsnip](Pluginy/vim-vsnip.md)

### Narzędzia i biblioteki

- [packer.nvim](Pluginy/packer-nvim.md) - menadżer pluginów
- [pears.nvim](Pluginy/pears-nvim.md) - automatyczne zamykanie nawiasów
- [plenary.nvim](Pluginy/plenary-nvim.md) - dodatkowa biblioteka
- [popup.nvim](Pluginy/popup-nvim.md) - dodatkowa biblioteka
- [vim-misc](Pluginy/vim-misc.md)

### Kolory

- [ayu-vim](Kolory/ayu-vim.md)
- [everforest](Kolory/everforest.md)
- [gruvbox-material](Kolory/gruvbox-material.md)
- [gruvbox](Kolory/gruvbox.md)
- [kanagawa.nvim](Kolory/kanagawa-nvim.md)
- [material.nvim](Kolory/material-nvim.md)
- [menguless](Kolory/menguless.md)
- [nightfox.nvim](Kolory/nightfox-nvim.md)
- [nvim-base16](Kolory/nvim-base16.md)
- [rose-pine](Kolory/rose-pine.md)
- [srcery-vim](Kolory/srcery-vim.md)
- [vim-colorscheme-manager](Kolory/vim-colorscheme-manager.md)
- [vim-colorscheme-switcher](Kolory/vim-colorscheme-switcher.md)
- [vim-gotham](Kolory/vim-gotham.md)
- [vim-hybrid-material](Kolory/vim-hybrid-material.md)
- [vim-lighthaus](Kolory/vim-lighthaus.md)
- [vim-one](Kolory/vim-one.md)
- [vim-solarized8](Kolory/vim-solarized8.md)

## Wyłączone

- [auto-session](Pluginy/auto-session.md)
- [AutoComplPop](Pluginy/autocomplpop.md)
- [CHADTree](Pluginy/chadtree.md)
- [coc.nvim](Pluginy/coc-nvim.md)
- [git-messenger.vim](Pluginy/git-messenger-vim.md)
- [hop.nvim](Pluginy/hop-nvim.md)
- [lightspeed](Pluginy/lightspeed.md)
- [LuaSnip](Pluginy/luasnip.md)
- [minimap.vim](Pluginy/minimap-vim.md)
- [neuron.nvim](Pluginy/neuron-nvim.md)
- [nvim-bufferline.lua](Pluginy/nvim-bufferline-lua.md)
- [nvim-treesitter](Pluginy/nvim-treesitter.md)
- [vim-go](Pluginy/vim-go.md)
- [vim-instant-markdown](Pluginy/vim-instant-markdown.md)
- [vim-templates](Pluginy/vim-templates.md)
- [vim-which-key](Pluginy/vim-which-key.md)
- [YankRing.vim](Pluginy/yankring-vim.md)

Kolory

- [vim-colorschemes](Kolory/vim-colorschemes.md)
