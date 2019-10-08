if has('nvim')
  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd TermOpen * startinsert
  tnoremap <silent> <Esc> <C-\><C-n>
  tnoremap <silent> <M-h> <C-\><C-n><C-w><C-h>
  tnoremap <silent> <M-j> <C-\><C-n><C-w><C-j>
  tnoremap <silent> <M-k> <C-\><C-n><C-w><C-k>
  tnoremap <silent> <M-l> <C-\><C-n><C-w><C-l>
  tnoremap <silent> <M-q><M-q> <C-\><C-n>:q<CR>
  tnoremap <silent> <C-v><Esc> <Esc>
endif
