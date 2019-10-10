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

" These config files should be sourced before any others
silent! source $VIMCONFIG/config/plugin-manager.vim
silent! source $VIMCONFIG/config/vim-plug-config.vim

" Source default files
silent! source $VIMCONFIG/default/settings.vim
silent! source $VIMCONFIG/default/normal-mappings.vim
silent! source $VIMCONFIG/default/insert-mappings.vim
silent! source $VIMCONFIG/default/command-mappings.vim
silent! source $VIMCONFIG/default/terminal-mappings.vim

" Other plugin config files (order shouldn't matter)
silent! source $VIMCONFIG/config/NERDTree-config.vim
silent! source $VIMCONFIG/config/NERDCommenter-config.vim
silent! source $VIMCONFIG/config/denite-config.vim
silent! source $VIMCONFIG/config/editorconfig-config.vim
silent! source $VIMCONFIG/config/gruvbox-config.vim
silent! source $VIMCONFIG/config/indentLine-config.vim

" vim: ts=2 sts=2 sw=2 expandtab


