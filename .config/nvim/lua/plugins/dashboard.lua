-- dashboard
local g = vim.g -- a table to access global variables
local api = vim.api
local fn = vim.fn
local plugins_count = fn.len(fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

g.dashboard_disable_at_vimenter = 0
g.dashboard_default_executive = "telescope"
g.dashboard_session_enable = 0

g.dashboard_custom_header = { "Hattori :•: Hanzō" }

g.dashboard_custom_footer = {
  "https://github.com/hattori-hanz0/neovim-lua :•: wersja: " .. vimrc_version .. " liczba   " .. plugins_count,
}
g.dashboard_custom_section = {
  a = { description = { "   Nowy plik              'n'" }, command = "DashboardNewFile" },
  b = { description = { "   Ostatnio używane pliki 'r'" }, command = "Telescope oldfiles" },
  -- c = { description = { "   Zapisane sesje         's'" }, command = "Telescope sessions" },
  d = { description = { "   Wyszukiwanie plików    'f'" }, command = "lua Find_Files()" },
  e = { description = { "   Wyszukuj w plikach     'w'" }, command = "Telescope live_grep" },
  f = { description = { "   Ostatnie projekty      'p'" }, command = "Telescope project" },
  g = { description = { "   Konfiguracja Neovim    'v'" }, command = "lua search_nvim_dotfiles()" },
  h = { description = { "   Pliki dot.files        'd'" }, command = ":lua search_dotfiles()" },
  i = { description = { "   Schematy kolorystyczne 'S'" }, command = "DashboardChangeColorscheme" },
  j = { description = { "   Dokumentacja           'D'" }, command = ":lua search_docs()" },
  k = { description = { "   Wyjście z Neovim       'q'" }, command = ":q" },
}

-- Mapowanie klawiszy w Dahsboard i ustawienie kolorów
local group = api.nvim_create_augroup("DashboardMappings", {
  clear = true,
})

-- Klawisz 's' - Telescope sessions
-- api.nvim_create_autocmd("FileType", {
--   pattern = {
--     "dashboard",
--   },
--   command = [[ nnoremap <silent> <buffer> s :Telescope sessions<cr> ]],
--   group = group,
-- })

-- Klawisz 'q' - funkcja search_docs()
api.nvim_create_autocmd("FileType", {
  pattern = {
    "dashboard",
  },
  callback = function()
    vim.api.nvim_command([[ nnoremap <silent> <buffer> f :lua Find_Files()<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> p :Telescope project<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> r :Telescope oldfiles<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> n :DashboardNewFile<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> w :Telescope live_grep<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> S :DashboardChangeColorscheme<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> d :lua search_dotfiles()<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> v :lua search_nvim_dotfiles()<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> q :q<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> D :lua search_docs()<cr> ]])
  end,
  group = group,
})
