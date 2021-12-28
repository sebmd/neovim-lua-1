-- telescope
local telescope_status_ok, configs = pcall(require, "telescope")
if not telescope_status_ok then
  return
end

-- local sorters, actions, previewers =
-- require("telescope.sorters")
-- require("telescope.actions")
-- require("telescope.previewers")

local actions = require("telescope.actions")
local sorters = require("telescope.sorters")
local previewers = require("telescope.previewers")

configs.setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--follow",
    },
    prompt_prefix = " ❯ ",
    initial_mode = "insert",
    file_ignore_patterns = { "/.git/*", "node_modules", "env/*", "venv/*" },
    color_devicons = true,
    winblend = 20,
    file_sorter = sorters.get_fzy_sorter,
    generic_sorter = sorters.get_fzy_sorter,
    file_previewer = previewers.vim_buffer_cat.new,
    grep_previewer = previewers.vim_buffer_vimgrep.new,
    qflist_previewer = previewers.vim_buffer_qflist.new,
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<esc>"] = actions.close,
      },
    },
  },
  extensions = {
    -- Fast, fast, really fast sorter (fzf native)
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    project = {
      base_dirs = {
        "$HOME",
        -- "~/Sync",
        -- { "~/git/github", maxdepth = 2 },
        -- { "~/git/github " },
        -- { '~/git', max_depth = 2 },
        -- { path = '~/workspace' },
        -- { path = '~/src', max_depth = 2 },
      },
      hidden_files = true, -- default: false
      -- display_type = "full",
    },
  },
  find_files = {
    theme = "dropdown",
  },
  pickers = {
    buffers = {
      sort_lastused = true,
      theme = "dropdown",
      mappings = {
        i = {
          ["<C-w>"] = "delete_buffer",
        },
        n = {
          ["<C-w>"] = "delete_buffer",
        },
      },
    },
  },
})

-- Load Telescope extensions
configs.load_extension("fzf")
configs.load_extension("project")
configs.load_extension("sessions")
