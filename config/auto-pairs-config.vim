augroup AutoPairs
  autocmd!
  autocmd FileType haskell call s:autopair_haskell_settings()
augroup END

function! s:autopair_haskell_settings()
  let b:AutoPairs = copy(g:AutoPairs)
  let b:AutoPairs["{-#"] = "#-}"
  unlet b:AutoPairs["'"]
endfunction
