inoremap <silent><expr> <c-space> coc#refresh()

" use `[w` and `]w` to navigate diagnostics
nmap <silent> [w <Plug>(coc-diagnostic-prev)
nmap <silent> ]w <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'help '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for rename current word
nmap <silent> <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <silent> <leader>fr <Plug>(coc-format-selected)
nmap <silent> <leader>fr <Plug>(coc-format-selected)

augroup cocGroup
  autocmd!
  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Setup formatexpr specified filetypes
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region
xmap <silent> <leader>a <Plug>(coc-codeaction-selected)
nmap <silent> <leader>a <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <silent> <leader>aa <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <silent> <leader>qf <Plug>(coc-fix-current)

" Create mapings for function text object, requires document symbols feature of languageserver
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>cd :<C-u>CocList diagnostics<CR>
" Manage extensions
nnoremap <silent> <leader>ce :<C-u>CocList extensions<CR>
" Show commands
nnoremap <silent> <leader>cc :<C-u>CocList commands<CR>
" Find symbol of current document
nnoremap <silent> <leader>co :<C-u>CocList outline<CR>
" Search workspace symbols
nnoremap <silent> <leader>cs :<C-u>CocList -I symbols<CR>
" Do default action for next item
nnoremap <silent> <leader>cn :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent> <leader>cp :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>cr :<C-u>CocListResume<CR>
