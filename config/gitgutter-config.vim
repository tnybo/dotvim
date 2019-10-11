autocmd CursorHold * GitGutter
autocmd BufWritePost * GitGutter
nnoremap <silent> <Leader>tgg :GitGutterBufferToggle<CR>
nnoremap <silent> <Leader>tgh :GitGutterLineHighlightsToggle<CR>
nnoremap <silent> <Leader>tgs :GitGutterSignsToggle<CR>
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
let g:gitgutter_preview_win_floating = 0

if has('win32')
  let g:gitgutter_git_executable = 'C:\Proagram Files\Git\bin\git.exe'
endif
