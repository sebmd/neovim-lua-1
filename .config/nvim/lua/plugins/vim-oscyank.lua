-- vim-oscyank.lua
local oscyank_status_ok, _ = pcall(require, "vim-oscyank")
if not oscyank_status_ok then
  return
end

vim.g.oscyank_term = "tmux" -- or 'screen', 'kitty', 'default'
