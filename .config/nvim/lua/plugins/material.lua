-- material
local material_status_ok, configs = pcall(require, "material")
if not material_status_ok then
  return
end

-- vim.g.material_style = "lighter"
-- vim.g.material_style = "palenight"
-- vim.g.material_style = "deep ocean"
-- vim.g.material_style = "ocanic"
vim.g.material_style = "darker"

-- konfiguracja koloru material
configs.setup({

  contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
  borders = false, -- Enable borders between verticaly split windows

  italics = {
    comments = true, -- Enable italic comments
    keywords = false, -- Enable italic keywords
    functions = false, -- Enable italic functions
    strings = false, -- Enable italic strings
    variables = false, -- Enable italic variables
  },

  contrast_windows = { -- Specify which windows get the contrasted (darker) background
    "terminal", -- Darker terminal background
    "packer", -- Darker packer background
    "qf", -- Darker qf list background
  },

  text_contrast = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = false, -- Enable higher contrast text for darker style
  },

  disable = {
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },
  -- Overwrite highlights with your own
  -- custom_highlights = {
  -- CursorLine = "#0000FF",
  -- LineNr = "#FF0000",
  -- },
})
