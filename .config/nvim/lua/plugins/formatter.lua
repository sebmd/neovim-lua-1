-- formatter
local formatter_status_ok, configs = pcall(require, "formatter")
if not formatter_status_ok then
  return
end

local api = vim.api

local prettier = function()
  return {
    exe = "prettier",
    args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
    -- args = { "--stdin-filepath", api.nvim_buf_get_name(0), "--double-quote" },
    stdin = true,
  }
end

configs.setup({
  filetype = {
    markdown = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
          stdin = true,
        }
      end,
    },
  },
})

configs.setup({
  logging = false,
  filetype = {
    javascript = { prettier },
    typescript = { prettier },
    html = { prettier },
    css = { prettier },
    scss = { prettier },
    markdown = { prettier },
    lua = {
      -- Stylua
      function()
        return {
          exe = "stylua",
          args = { "--indent-width", 2, "--indent-type", "Spaces" },
          stdin = false,
        }
      end,
    },
    sh = {
      function()
        return {
          exe = "shfmt",
          args = { "-w -ci -i 4 --" },
          stdin = false,
        }
      end,
    },
  },
})

-- Runs Formatter on save
api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.ts,*.css,*.scss,*.md,*.html,*.lua,*.sh : FormatWrite
augroup END
]],
  true
)
