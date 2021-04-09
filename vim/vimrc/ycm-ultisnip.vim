" YouCompleteMe settings

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_filetype_blacklist = {}

if !exists('g:ycm_semantic_triggers')
      let g:ycm_semantic_triggers = {}
endif

" Ultisnips settings

let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom-snippets"]
