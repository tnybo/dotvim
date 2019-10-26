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

if isdirectory(expand('$VIMCONFIG'))
  " These config files should be sourced before any others
  silent! source $VIMCONFIG/config/plugin-manager.vim
  silent! source $VIMCONFIG/config/vim-plug-config.vim

  " Source default files
  silent! source $VIMCONFIG/default/settings.vim
  silent! source $VIMCONFIG/default/normal-mappings.vim
  silent! source $VIMCONFIG/default/insert-mappings.vim
  silent! source $VIMCONFIG/default/command-mappings.vim
  silent! source $VIMCONFIG/default/terminal-mappings.vim
  silent! source $VIMCONFIG/default/visual-mappings.vim

  " Other plugin config files (order shouldn't matter)
  silent! source $VIMCONFIG/config/airline-config.vim
  silent! source $VIMCONFIG/config/denite-config.vim
  silent! source $VIMCONFIG/config/editorconfig-config.vim
  silent! source $VIMCONFIG/config/fugitive-config.vim
  silent! source $VIMCONFIG/config/gitgutter-config.vim
  silent! source $VIMCONFIG/config/gruvbox-config.vim
  silent! source $VIMCONFIG/config/indentLine-config.vim
  silent! source $VIMCONFIG/config/NERDCommenter-config.vim
  silent! source $VIMCONFIG/config/NERDTree-config.vim
  silent! source $VIMCONFIG/config/vim-sneak-config.vim
  silent! source $VIMCONFIG/config/haskell-vim-config.vim
endif

" vim: ts=2 sts=2 sw=2 expandtab


