-- dashboard
g.dashboard_disable_at_vimenter = 0
g.dashboard_default_executive = "telescope"
g.dashboard_session_enable = 0

g.dashboard_custom_header = { "Hattori :•: Hanzo" }

g.dashboard_custom_footer = { "https://github.com/hattori-hanz0/neovim-lua :•: " .. vimrc_version }

g.dashboard_custom_section = {
  a = {
    description = { "   Wyszukiwanie plików    'f'" },
    command = "lua Find_Files()",
  },
  b = {
    description = { "   Ostatnie projekty      'p'" },
    command = "Telescope project",
  },
  c = {
    description = { "   Ostatnio używane pliki 'r'" },
    command = "Telescope oldfiles",
  },
  d = {
    description = { "   Nowy plik              'n'" },
    command = "DashboardNewFile",
  },
  e = {
    description = { "   Wyszukuj w plikach     'w'" },
    command = "Telescope live_grep",
  },
  f = {
    description = { "   Schematy kolorystyczne 's'" },
    command = "DashboardChangeColorscheme",
  },
  g = {
    description = { "   Pliki dot.files        'd'" },
    command = ":lua search_dotfiles()",
  },
  h = {
    description = { "   Konfiguracja Neovim    'c'" },
    command = ":e $MYVIMRC",
  },
  i = {
    description = { "   Dokumentacja           'D'" },
    command = ":lua search_docs()",
  },
  j = {
    description = { "   Wyjście z Neovim       'q'" },
    command = ":q",
  },
}
-- Mapowanie klawiszy w Dahsboard i ustawienie kolorów
api.nvim_exec(
  [[
    autocmd FileType dashboard nnoremap <silent> <buffer> f :lua Find_Files()<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> p :Telescope project<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> r :Telescope oldfiles<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> n :DashboardNewFile<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> w :Telescope live_grep<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> s :DashboardChangeColorscheme<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> d :lua search_dotfiles()<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> c :e $MYVIMRC<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> D :lua search_docs()<cr>
    autocmd FileType dashboard nnoremap <silent> <buffer> q :q<cr>

    autocmd FileType dashboard highlight dashboardHeader    ctermfg=114 guifg=#FFCC66
    autocmd FileType dashboard highlight dashboardCenter    ctermfg=109 guifg=#5CCFE6
    autocmd FileType dashboard highlight dashboardFooter    ctermfg=240 guifg=#BBE67E
    autocmd FileType dashboard highlight dashboardShortCut  ctermfg=245
]],
  false
)
