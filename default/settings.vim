let mapleader = "\<Space>"
set hidden
set number
set ts=2 sts=2 sw=2 expandtab
set splitright
set nosplitbelow
set ignorecase smartcase
set updatetime=100
set showtabline=2
set signcolumn=yes:1
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set nowrap

if exists('$VIMDATA') && isdirectory(expand('$VIMDATA'))
  if !isdirectory(expand('$VIMDATA') . "/undo")
    call mkdir(expand('$VIMDATA') . "/undo")
  endif
  execute "set undodir=" . expand('$VIMDATA') . "/undo"
  set undofile
endif

" vim: ts=2 sts=2 sw=2 expandtab

