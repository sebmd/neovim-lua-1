-- hop
local hop_status_ok, configs = pcall(require, "hop")
if not hop_status_ok then
  return
end

configs.setup({
  reverse_distribution = true,
})

-- Mapowanie
map("n", "<leader>h", "<cmd>lua require'hop'.hint_words()<cr>")
map("n", "<leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
map("v", "<leader>h", "<cmd>lua require'hop'.hint_words()<cr>")
map("v", "<leader>l", "<cmd>lua require'hop'.hint_lines()<cr>")
-- Kolory
cmd("hi HopNextKey guifg=#ff9900")
cmd("hi HopNextKey1 guifg=#ff9900")
cmd("hi HopNextKey2 guifg=#ff9900")
