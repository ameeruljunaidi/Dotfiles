" Lexical settings
let g:lexical#spell = 1

" Goyo settings
let g:goyo_width = 90

" Remap local leader
let maplocalleader = ","

" Syntax setttings
let g:pandoc#syntax#conceal#urls = 1

" Preview settings
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0

" Preview
nnoremap <leader>p :MarkdownPreview<CR>

" Where to show the TOC window. Can be "top", "left", "right", "bottom".
let g:pandoc#toc#position = "bottom"

" Must the TOC window close after selecting a location? This also controls the
" behavior of the <CR> key. If '1', <CR> navigates and closes the TOC, <C-CR>
" simply navigates. If '0', this behavior is reversed.
let g:pandoc#toc#close_after_navigating = 0

" Set autosave and pandoc settings
" For most md documents, it just be output as pdf
let b:auto_save = 1
" let g:pandoc#command#autoexec_on_writes = 1
" let g:pandoc#command#autoexec_command = "Pandoc pdf --toc --number-sections"

" Shortcut to compile
nnoremap <leader>o  :Pandoc pdf --toc --toc-depth=2 --number-sections<CR>
