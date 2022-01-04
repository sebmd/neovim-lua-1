-- vim-dotoo
vim.g["dotoo#agenda#files"] = "~/workspace/org/*.org"
vim.g["dotoo#capture#refile"] = vim.fn.expand("~/workspace/org/refile.org")
vim.api.nvim_exec(
  [[
    augroup dootoft
        au!
        autocmd BufNewFile,BufRead *.org   set filetype=dotoo
    augroup END
  ]],
  false
)
-- let g:dotoo#agenda#files = ['~/workspace/org/*.org']
-- let g:dotoo#capture#refile = expand('~/workspace/org/refile.org')
