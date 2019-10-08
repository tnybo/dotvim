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
source $VIMCONFIG/config/plugin-manager.vim
source $VIMCONFIG/config/vim-plug-config.vim

" Source default files
source $VIMCONFIG/default/settings.vim
source $VIMCONFIG/default/normal-mappings.vim
source $VIMCONFIG/default/insert-mappings.vim
source $VIMCONFIG/default/command-mappings.vim
source $VIMCONFIG/default/terminal-mappings.vim

" Other plugin config files (order shouldn't matter)
source $VIMCONFIG/config/NERDTree-config.vim
source $VIMCONFIG/config/denite-config.vim
source $VIMCONFIG/config/editorconfig-config.vim
source $VIMCONFIG/config/gruvbox-config.vim
source $VIMCONFIG/config/indentLine-config.vim

" vim: ts=2 sts=2 sw=2 expandtab


