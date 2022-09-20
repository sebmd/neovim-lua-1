-- dashboard
local g = vim.g -- a table to access global variables
local api = vim.api
local fn = vim.fn
local plugins_count = fn.len(fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

-- Dashboard
local db_status_ok, db = pcall(require, "dashboard")
if not db_status_ok then
  return
end

db.disable_at_vimenter = 0
db.default_executive = "telescope"
db.session_enable = 0

db.custom_header = { "Hattori :•: Hanzō" }

db.custom_footer = {
  "https://github.com/hattori-hanz0/neovim-lua :•: wersja: " .. vimrc_version .. " liczba   " .. plugins_count,
}
db.custom_center = {
  { icon = " ", desc = "Nowy plik                      ", shortcut = "n", action = "DashboardNewFile" },
  { icon = " ", desc = "Ostatnio używane pliki         ", shortcut = "r", action = "Telescope oldfiles" },
  { icon = " ", desc = "Wyszukiwanie plików            ", shortcut = "f", action = "lua Find_Files()" },
  { icon = " ", desc = "Wyszukuj w plikach             ", shortcut = "w", action = "Telescope live_grep" },
  { icon = " ", desc = "Ostatnie projekty              ", shortcut = "p", action = "Telescope project" },
  { icon = " ", desc = "Pliki dot.files                ", shortcut = "d", action = ":lua search_dotfiles()" },
  { icon = " ", desc = "Schematy kolorystyczne         ", shortcut = "S", action = "Kolory" },
  { icon = " ", desc = "Dokumentacja                   ", shortcut = "D", action = ":lua search_docs()" },
  { icon = " ", desc = "Konfiguracja Neovim            ", shortcut = "v", action = "lua search_nvim_dotfiles()" },
  { icon = " ", desc = "Aktualizacja pluginów          ", shortcut = "u", action = ":PackerSync<cr>" },
  { icon = " ", desc = "Wyjście z Neovim               ", shortcut = "q", action = ":q" },
}

-- Mapowanie klawiszy w Dahsboard i ustawienie kolorów
local group = vim.api.nvim_create_augroup("DashboardMappings", {
  clear = true,
})

-- Klawisz 's' - Telescope sessions
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = {
--     "dashboard",
--   },
--   command = [[ nnoremap <silent> <buffer> s :Telescope sessions<cr> ]],
--   group = group,
-- })

-- Klawisz 'q' - funkcja search_docs()
vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "dashboard",
  },
  callback = function()
    vim.api.nvim_command([[ nnoremap <silent> <buffer> f :lua Find_Files()<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> p :Telescope project<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> r :Telescope oldfiles<cr> ]])
    vim.api.nvim_command([[ nnoremap <silent> <buffer> u :PackerSync<cr> ]])
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
