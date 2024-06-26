" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1



" Only define functions in the first run of the script
if !exists("*s:NetKATPLSaveConfiguration")
	function s:NetKATPLSaveConfiguration()
		let s:save_cpo = &cpo
		set cpo&vim
	endfunction 
	
	function s:NetKATPLRestoreConfiguration()
		let &cpo = s:save_cpo
		unlet s:save_cpo
	endfunction
endif


" THE SCRIPT STARTS HERE
call s:NetKATPLSaveConfiguration()


" code to deactivate the plugin should go between the quotes (like a
" destructor).  VIM calls this on user deactivating the plugin (a callback)
let b:undo_ftplugin = ""

autocmd FileType nkpl set nospell
autocmd FileType nkpl set foldmethod=indent

" see help 41.13 for inspiration

call s:NetKATPLRestoreConfiguration()


