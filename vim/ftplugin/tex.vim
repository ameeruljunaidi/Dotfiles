" Vimtex settings
let g:vimtex_toc_config = {
      \ 'name' : 'TOC',
      \ 'layers' : ['content', 'todo', 'include'],
      \ 'resize' : 1,
      \ 'split_width' : 50,
      \ 'todo_sorted' : 0,
      \ 'show_help' : 1,
      \ 'show_numbers' : 1,
      \ 'mode' : 2,
      \}
let g:vimtex_view_general_viewer = 'zathura'

" Set autosave
let b:auto_save = 1

" Goyo settings
let g:goyo_width = 90

" Asyncrun settings
" nmap <F5> :AsyncRun! -mode=term -close pythontex.sh %<CR>
nmap <F5> :AsyncRun! -mode=term pythontex.sh %<CR>
let g:asyncrun_open = 12

" Settings for YCM
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

" Folding
let g:vimtex_fold_enabled=1
