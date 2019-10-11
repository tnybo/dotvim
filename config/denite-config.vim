autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> a
  \ denite#do_map('toggle_select_all')
  nnoremap <silent><buffer><expr> tq
  \ denite#do_map('do_action', 'quickfix')
  nnoremap <silent><buffer><expr> c
  \ denite#do_map('do_action', 'cd')
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction

call denite#custom#var
\ ('file/rec'
\ , 'command'
\ , ['rg', '--files', '--glob', '!.git', '--glob', '!bin']
\ )

call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

nnoremap <silent> <Leader>ff :Denite file/rec -start-filter<CR>
nnoremap <silent> <Leader>fb :Denite buffer -start-filter<CR>
nnoremap <silent> <Leader>fd :Denite directory_rec -start-filter<CR>
nnoremap <silent> <Leader>fw :Denite grep <CR>
