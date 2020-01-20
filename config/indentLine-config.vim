let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_fileTypeExclude = [ 'help', 'json' ]
let g:indentLine_bufTypeExclude = [ 'help', 'terminal' ]
let g:indentLine_bufNameExclude = [ 'term://.*', '.*index' ]
nnoremap [o: :IndentLinesEnable<CR>
nnoremap ]o: :IndentLinesDisable<CR>
