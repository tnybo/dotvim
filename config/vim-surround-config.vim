augroup Surround
  autocmd!
  autocmd FileType haskell let b:surround_{char2nr('#')} = "{-# \r #-}"
augroup END
