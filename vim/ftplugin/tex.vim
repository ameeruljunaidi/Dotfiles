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
nmap <F5> :AsyncRun! -mode=term pythontex.sh %<CR>
let g:asyncrun_open = 12

" Settings for YCM
" au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_min_num_of_chars_for_completion_enabled = g:ycm_min_num_of_chars_for_completion
let g:ycm_min_num_of_chars_for_completion_disabled = 999

function FixLaTeXCompletion()
  if &ft == 'tex' && g:ycm_min_num_of_chars_for_completion != g:ycm_min_num_of_chars_for_completion_disabled
    let g:ycm_min_num_of_chars_for_completion = g:ycm_min_num_of_chars_for_completion_disabled
    YcmRestartServer
  endif
  if &ft != 'tex' && g:ycm_min_num_of_chars_for_completion == g:ycm_min_num_of_chars_for_completion_disabled
    let g:ycm_min_num_of_chars_for_completion = g:ycm_min_num_of_chars_for_completion_enabled
    YcmRestartServer
  endif
endfunction

augroup tex_ycm
  autocmd!

  " Connect VimTeX and YouCompleteMe.
  " Taken from |:help vimtex-complete-youcompleteme|.
  autocmd VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

  " Make YouCompleteMe *not* suggest identifiers in TeX documents.
  " References:
  " 1. |:help g:ycm_min_num_of_chars_for_completion|
  " 2. https://github.com/ycm-core/YouCompleteMe/issues/872
  autocmd BufEnter * call FixLaTeXCompletion()
augroup end
