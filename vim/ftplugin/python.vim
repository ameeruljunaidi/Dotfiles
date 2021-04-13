" Tabs and other python settings
au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4

" Slime settings for iPython
let g:slime_target = 'tmux'
let g:slime_python_ipython = 1
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{bottom}' }
let g:slime_dont_ask_default = 1

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
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>
nmap <Leader>e <Plug>SlimeLineSend
xmap <Leader>e <Plug>SlimeRegionSend

" Highlighting settings - not too sure
let python_highlight_all=1
" This one highlight whitespaces though
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=red

" Add a ruler to show line limit
set colorcolumn=88
highlight ColorColumn ctermbg=254

" Keymap settings for Black
nmap <F10> :Black<CR>
autocmd BufWritePre *.py silent execute ':Black'

" Run python with F9
autocmd FileType python map <buffer> <F9> :w !python<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w !python<CR>
