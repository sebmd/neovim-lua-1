-- komendy
cmd("command! CD call CD()")
cmd("command! CDEdit e ~/.config/bmproj")
cmd("command! Colors FzfLua colorschemes")
cmd("command! DeleteSwapFile call DeleteSwapFile()")
cmd("command! DestractionFree call DestractionFree()")
cmd("command! DiaryNotes call DiaryNotes()")
cmd("command! Dokumentacja :lua search_docs()<cr>")
cmd("command! Files FzfLua files")
cmd("command! GA call GA()")
cmd("command! GP call GP()")
cmd("command! GR :GoRun")
cmd("command! InsertDiaryHeader call InsertDiaryHeader()")
cmd("command! Kolory call Kolory()")
cmd("command! Maps :Telescope keymaps")
cmd("command! PC PackerClean")
cmd("command! PI PackerInstall")
cmd("command! PS PackerSync")
cmd("command! RevBackground call RevBackground()")
cmd("command! S :source %")
cmd("command! Time :lua Time()")
cmd("command! UpdateVimrc call UpdateVimrc()")
cmd("command! VimrcVersion :lua VimrcVersion()<cr>")
cmd("command! Write call Write()")
