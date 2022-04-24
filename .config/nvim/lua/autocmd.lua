vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "help",
    "Trouble",
    "git",
  },
  command = "setlocal colorcolumn=0 nocursorcolumn nospell",
  group = group,
})
