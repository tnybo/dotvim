nnoremap <silent> <M-h> <C-w>h
nnoremap <silent> <M-j> <C-w>j
nnoremap <silent> <M-k> <C-w>k
nnoremap <silent> <M-l> <C-w>l
nnoremap <silent> <Leader>H <C-w>H
nnoremap <silent> <Leader>J <C-w>J
nnoremap <silent> <Leader>K <C-w>K
nnoremap <silent> <Leader>L <C-w>L
nnoremap <silent> <C-l> :nohlsearch<CR>
nnoremap <silent> <M-w><M-w> :w<CR>
nnoremap <silent> <M-w><M-a> :wa<CR>
nnoremap <silent> <M-q><M-q> :q<CR>
nnoremap <silent> <M-q><M-a> :qa<CR>
nnoremap <silent> <Leader>vs :vsplit<CR>
nnoremap <silent> <Leader>ss :split<CR>
nnoremap <silent> <Leader>p "0p
nnoremap <silent> <Leader>tq :call <SID>toggleQuickfix()<CR>
nnoremap <silent> <Leader>tl :call <SID>toggleLocationList()<CR>
nnoremap <silent> <C-j> i<CR><Esc>

if has('nvim')
  nnoremap <silent> <Leader>sbt :split <Bar> wincmd J <Bar> call <SID>openMostRecentTerminal()<CR>
  nnoremap <silent> <Leader>bt :vsplit <Bar> wincmd L <Bar> call <SID>openMostRecentTerminal()<CR>
endif

function! s:findTerminalBuffer() abort
  for l:buf in range(1, bufnr("$"))
    if bufname(l:buf) =~ "term:.*\\(cmd.*\\|bash.*\\)"
      return l:buf
    endif
  endfor
  return 0
endfunction

function! s:toggleQuickfix() abort
  let l:qfWinid = get(getqflist({'winid': 0}), 'winid', 0)
  if l:qfWinid != 0
    cclose
    wincmd p
  else
    copen
    wincmd p
  endif
endfunction

function! s:toggleLocationList() abort
  let l:qfWinid = get(getloclist(0, {'winid': 0}), 'winid', 0)
  if l:qfWinid != 0
    lclose
  else
    lopen
    wincmd p
  endif
endfunction

function! s:openMostRecentTerminal() abort
  let l:termBuf = <SID>findTerminalBuffer()
  if l:termBuf != 0
    execute "buffer " . l:termBuf
  else
    execute "terminal"
  endif
endfunction

" vim: ts=2 sts=2 sw=2 expandtab

