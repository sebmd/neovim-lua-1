-- kommentary
local kommentary_status_ok, configs = pcall(require, "kommentary.config")
if not kommentary_status_ok then
  return
end

configs.configure_language("rust", {
  single_line_comment_string = "//",
  multi_line_comment_strings = { "/*", "*/" },
})

vim.g.kommentary_create_default_mappings = false

-- api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", {})
-- api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
-- api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", {})
-- api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})
-- api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
-- api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})

-- api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", {})
-- api.nvim_set_keymap("n", "<c-_>", "<Plug>kommentary_line_default", {})
-- api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
-- api.nvim_set_keymap("x", "<c-_>", "<Plug>kommentary_visual_default", {})
