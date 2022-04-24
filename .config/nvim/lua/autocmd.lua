local api = vim.api
local group = api.nvim_create_augroup("Description", {
  clear = true,
})

api.nvim_create_autocmd("FileType", {
  pattern = {
    "help",
    "Trouble",
    "git",
  },
  command = "setlocal colorcolumn=0 nocursorcolumn nospell",
})

-- Hide cursorline in insert mode
-- api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, { command = "set nocursorline", group = group })
-- api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, { command = "set cursorline", group = group })

-- Automatically update changed file in Vim
api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  command = [[silent! if mode() != 'c' && !bufexists("[Command Line]") | checktime | endif]],
})

-- Notification after file change
api.nvim_create_autocmd("FileChangedShellPost", {
  command = [[echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None]],
})
