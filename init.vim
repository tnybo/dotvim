" Put user specific configuration here

let s:isVimconfigSet = exists('$VIMCONFIG')
let s:isVimdataSet = exists('$VIMDATA')

if !s:isVimconfigSet | echom "Please set your 'VIMCONFIG' environment variable" | endif
if !s:isVimdataSet | echom "Please set your 'VIMDATA' environment variable" | endif

if s:isVimconfigSet
  source $VIMCONFIG/config/plugin-manager.vim
  source $VIMCONFIG/config/vim-plug-settings.vim
endif

" vim: ts=2 sts=2 sw=2 expandtab
