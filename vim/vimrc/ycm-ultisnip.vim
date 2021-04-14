" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_filetype_blacklist = {}

if !exists('g:ycm_semantic_triggers')
      let g:ycm_semantic_triggers = {}
endif

" If you want ycm to be on all the time
" let g:ycm_min_num_of_chars_for_completion=0

" To manually open ycm with C-z
" let g:ycm_auto_trigger = 0
" inoremap <C-z> <c-r>=<sid>ycm_trigger_identifier()<cr>

" function! s:ycm_trigger_identifier()
"   let g:ycm_auto_trigger = 1
"   augroup ycm_trigger_identifier
"     au!
"     autocmd InsertLeave * ++once let g:ycm_auto_trigger = 0
"   augroup end
"   doautocmd TextChangedI
"   return ''
" endfunction

" Ultisnips settings
let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom-snippets"]
