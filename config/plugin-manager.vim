let s:prevShell = &shell
let s:prevShellQuote = &shellquote
let s:prevShellPipe = &shellpipe
let s:prevShellRedir = &shellredir
let s:prevShellXQuote = &shellxquote
let s:prevShellCmdFlag = &shellcmdflag

function! s:cacheShellSettings()
  let s:prevShell = &shell
  let s:prevShellQuote = &shellquote
  let s:prevShellPipe = &shellpipe
  let s:prevShellRedir = &shellredir
  let s:prevShellXQuote = &shellxquote
  let s:prevShellCmdFlag = &shellcmdflag
endfunction

function! s:restoreShellSettings()
  let &shell = s:prevShell
  let &shellquote = s:prevShellQuote
  let &shellpipe = s:prevShellPipe
  let &shellredir = s:prevShellRedir
  let &shellxquote = s:prevShellXQuote
  let &shellcmdflag = s:prevShellCmdFlag
endfunction

function! s:defaultShellSettings()
  set shell&
  set shellquote&
  set shellpipe&
  set shellredir&
  set shellxquote&
  set shellcmdflag&
endfunction

function! s:installVimPlug()
  if has('win32')
    let l:autoloadDir = ""
    if has('nvim')
      let l:autoloadDir = expand('~\AppData\Local\nvim\autoload')
    else
      let l:autoloadDir = expand('~\vimfiles\autoload')
    endif
    let l:isInstalled = !empty(glob(l:autoloadDir . '\plug.vim'))
    let l:isInstalled = l:isInstalled || !empty(glob(l:autoloadDir . '\plug.vim'))
    if !l:isInstalled
      call <SID>cacheShellSettings()
      set shell=powershell shellquote= shellpipe=\| shellxquote=
      set shellredir=\|\ Out-File\ -Encoding\ UTF8
      set shellcmdflag=-NoLogo\ -NoProfile\ -ExecutionPolicy\ RemoteSigned\ -Command
      let l:doesAutoloadExist = isdirectory(l:autoloadDir)
      if !l:doesAutoloadExist | call mkdir(l:autoloadDir) | endif
      let l:cmd = "(New-Object Net.WebClient).DownloadFile("
      let l:cmd .= "'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim',"
      let l:cmd .= "$ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("
      let l:cmd .= '"' . l:autoloadDir . '\plug.vim"'
      let l:cmd .= ")"
      let l:cmd .= ")"
      execute 'silent !' . l:cmd
      call <SID>restoreShellSettings()
    endif
  else
    if has('nvim')
      let l:autoloadDir = expand('~/.local/share/nvim/site/autoload')
    else
      let l:autoloadDir = expand('~/.vim/autoload')
    endif
    let l:vimPlugFile = l:autoloadDir . '/plug.vim'
    let l:isInstalled = !empty(glob(l:vimPlugFile))
    let l:isInstalled = l:isInstalled || !empty(glob(l:vimPlugFile))
    let l:cmd = "curl -fLo "
    let l:cmd .= l:vimPlugFile . " "
    let l:cmd .= "--create-dirs "
    let l:cmd .= "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    execute 'silent !' . l:cmd
  endif
endfunction

call <SID>installVimPlug()
augroup VimEntry
  autocmd!
  autocmd VimEnter * call <SID>defaultShellSettings() | PlugInstall --sync | source $MYVIMRC
augroup END

" vim: ts=2 sts=2 sw=2 expandtab
