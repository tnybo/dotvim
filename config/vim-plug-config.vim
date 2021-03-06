call plug#begin('$VIMCONFIG/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'michaeljsmith/vim-indent-object'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovimhaskell/haskell-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ndmitchell/ghcid', {'rtp': 'plugins/nvim'}
Plug 'scrooloose/nerdtree'
Plug 'Shougo/denite.nvim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
if !has('win32')
  Plug 'tpope/vim-eunuch'
endif
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wellle/targets.vim'
Plug 'Yggdroot/indentLine'

call plug#end()

" vim: ts=2 sts=2 sw=2 expandtab
