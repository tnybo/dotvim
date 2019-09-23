" =================================================================================================
" Setup user environment
" =================================================================================================

if has('win32')
  if has('nvim')
    let $VIMCONFIG = expand('~\AppData\Local\nvim')
    let $VIMDATA = expand('~\AppData\Local\nvim-data')
  else
    let $VIMCONFIG = expand('~\vimfiles')
    let $VIMDATA = expand('~\AppData\Local\vim-data')
  endif
else
  if has('nvim')
    let $VIMCONFIG = expand('~/.config/nvim')
    let $VIMDATA = expand('~/.local/share/nvim')
  else
    let $VIMCONFIG = expand('~/.vim')
    let $VIMDATA = expand('~/.local/share/vim')
  endif
endif

" =================================================================================================
" Source configuration files for different plugins
" =================================================================================================

source $VIMCONFIG/config/plugin-manager.vim
source $VIMCONFIG/config/vim-plug-settings.vim

" vim: ts=2 sts=2 sw=2 expandtab
