-- komendy
vim.cmd("command! CD call CD()")
vim.cmd("command! CDEdit e ~/.config/bmproj")
vim.cmd("command! DiaryNotes call DiaryNotes()")
vim.cmd("command! Dokumentacja :lua search_docs()<cr>")
vim.cmd("command! GA call GA()")
vim.cmd("command! GP call GP()")
vim.cmd("command! GR :GoRun")
vim.cmd("command! InsertDiaryHeader call InsertDiaryHeader()")
vim.cmd("command! Kolory call Kolory()")
vim.cmd("command! PI PackerInstall")
vim.cmd("command! PS PackerSync")
vim.cmd("command! RevBackground call RevBackground()")
vim.cmd("command! S :source %")
vim.cmd("command! Time call Time()")
vim.cmd("command! UpdateVimrc call UpdateVimrc()")
vim.cmd("command! VimrcVersion :lua VimrcVersion()<cr>")
vim.cmd("command! Write call Write()")
