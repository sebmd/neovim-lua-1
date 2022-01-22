# vim-vsnip

- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)

- https://code.visualstudio.com/docs/editor/userdefinedsnippets#_snippet-syntax

Makietyki możemy edytować wpisując polecenie:

```
:VsnipOpen
```

## Przykład makietek dla plików Markdown

Elementy `${1:$TM_SELECTED_TEXT}` są znacznikami, pomiędzy którymi można poruszać się klawiszem
`<TAB>` oraz `<S-TAB>`, jednak należy je wcześniej zmapować. Opis mapowania znajduje się na stronie
https://github.com/hrsh7th/vim-vsnip#2-setting.

Mapowanie dla Vim

```vim
" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
```

Mapowanie w Lua

```lua
-- plugin vim-vsnip
cmd([[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']])
cmd([[smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']])
cmd([[imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']])
cmd([[smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']])
```

```json
{
  "ObsWiki": {
    "prefix": ["ObsWiki"],
    "body": [
      "---",
      "title: $TM_FILENAME_BASE",
      "tags:",
      "  - wiki",
      "created: ${VIM:system('date +%F-%T')}",
      "---",
      "",
      "Tags: #wiki, ${1:$TM_SELECTED_TEXT}",
      "",
      "# $TM_FILENAME_BASE",
      "",
      "${2:$TM_SELECTED_TEXT}",
      "Tralalala: ${3:$TM_SELECTED_TEXT} :"
    ],
    "description": "Nagłówek Obsidian dla stron Wiki"
  },
  "ObsSkrypty": {
    "prefix": ["ObsSkrypty"],
    "body": [
      "---",
      "title: $TM_FILENAME_BASE",
      "tags:",
      "  - skrypty",
      "created: ${VIM:system('date +%F-%T')}",
      "---",
      "",
      "Tags: #skrypty, ${1:$TM_SELECTED_TEXT}",
      "",
      "# $TM_FILENAME_BASE",
      ""
    ],
    "description": "Nagłówek Obsidian dla stron Skrypty"
  }
}
```
