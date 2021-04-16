" Set autosave
let b:auto_save = 1

" Lexical settings
let g:lexical#spell = 1

" Remap local leader
let maplocalleader = " "

" Goyo settings
let g:goyo_width = 90

" Key bindings for vim-ipython
nnoremap <Leader>s :SlimeSend1 ipython --matplotlib<CR>
nnoremap <Leader>r :IPythonCellRun<CR>
nnoremap <Leader>R :IPythonCellRunTime<CR>
nnoremap <Leader>c :IPythonCellExecuteCell<CR>
nnoremap <Leader>C :IPythonCellExecuteCellJump<CR>
nnoremap <Leader>w :IPythonCellClear<CR>
nnoremap <Leader>x :IPythonCellClose<CR>
nnoremap <Leader>p :IPythonCellPrevCommand<CR>
nnoremap <Leader>Q :IPythonCellRestart<CR>
nnoremap <Leader>d :SlimeSend4 %debug<CR>
nnoremap <Leader>q :SlimeSend1 exit<CR>k"
nmap <Leader>e <Plug>SlimeLineSend
xmap <Leader>e <Plug>SlimeRegionSend
