# vim-vsnip

- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip)

Makietyki możemy edytować wpisując polecenie:

```
:VsnipOpen
```

## Przykład makietek dla plików Markdown

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
    "",
    ],
    "description": "Nagłówek Obsidian dla stron Skrypty"
  }
}
```
