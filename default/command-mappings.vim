if has('win32')
  cnoremap %% <C-r><C-=>expand('%:h')<CR>\
else
  cnoremap %% <C-r><C-=>expand('%:h')<CR>/
endif

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" vim: ts=2 sts=2 sw=2 expandtab

