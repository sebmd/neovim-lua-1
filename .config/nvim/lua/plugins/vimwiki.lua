-- vimwiki
vim.api.nvim_exec(
  [[
    " wyłącza plugin vimwiki dla innych plików markdown poza listą wiki
    let g:vimwiki_global_ext = 0

    " wiki
    let wiki = {}
    let wiki.path = '~/Vimwiki/wiki'
    let wiki.ext = '.wiki'
    let wiki.syntax = 'markdown'
    let wiki.nested_syntaxes = {'python': 'python', 'json': 'json', 'sh': 'sh'}
    let wiki.auto_tags = 1

    " chaos wiki
    let chaos = {}
    let chaos.path = '~/Vimwiki/chaos'
    let chaos.ext = '.wiki'
    let chaos.syntax = 'markdown'
    let chaos.auto_tags = 1

    " linux
    let linux = {}
    let linux.path = '~/Vimwiki/linux'
    let linux.ext = '.wiki'
    let linux.syntax = 'markdown'
    let linux.auto_tags = 1

    let g:vimwiki_list = [wiki, chaos, linux]
    let g:vimwiki_listsyms = '✗○◐●✓'

    autocmd Filetype vimwiki map <leader>1 1<leader>ww
    autocmd Filetype vimwiki map <leader>2 2<leader>ww
    autocmd Filetype vimwiki map <leader>3 3<leader>ww
    " Zamiast 1<leader>ww można użyć zapisu 1<plug>VimwikiIndex
    " autocmd Filetype vimwiki map <leader>4 4<Plug>VimwikiIndex
]],
  false
)

-- cmd("let g:vimwiki_list = [wiki, chaos, linux]")
