# Po instalacji

## Minimap

Instalacja pluginu minimap.vim

- https://github.com/wfxr/minimap.vim

Plugin wymaga instalacji [code-minimap](https://github.com/wfxr/code-minimap)

```shell
cargo install --locked code-minimap
```

## Pobranie fzy-lua-native

```shell
cd "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/telescope-fzy-native.nvim/
git submodule update --init --recursive
```

## Instalacja Prettier

```shell
npm install --save-dev --save-exact prettier
```

## Zmienne systemowe

```bash
NOTES_DIR - /home/$USER/Notes
```

## Uruchomienie lokalnej wersji Neovim

W pliku `$HOME/bin/n6` dodajemy

```shell
VIMRUNTIME=~/.local/nvim/share/nvim/runtime/ .local/nvim/bin/nvim "$@"
```

## Plik ~/.config/nvim/lua/local.lua

W tym pliku można umieścić dodatkową konfigurację

Przykład konfiguracji nvim-treesitter oraz formatter

```lua
-- nvim-treesitter
require("packer").startup(function(use)
  use("nvim-treesitter/nvim-treesitter")
end)

local ts = require("nvim-treesitter.configs")
ts.setup({ ensure_installed = "maintained", highlight = { enable = true } })

-- formatter
require("formatter").setup({
  filetype = {
    javascript = {
      -- JavaScript
      function()
        return {
          exe = "~/node_modules/.bin/prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    markdown = {
      -- Markdown
      function()
        return {
          exe = "~/node_modules/.bin/prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    html = {
      -- HTML
      function()
        return {
          exe = "~/node_modules/.bin/prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
    lua = {
      -- LUA
      function()
        return {
          exe = "~/.local/bin/stylua",
          args = {
            "--config-path ~/.config/stylua/stylua.toml",
            "-",
          },
          stdin = true,
        }
      end,
    },
  },
})
```
