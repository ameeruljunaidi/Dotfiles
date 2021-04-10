" Set the theme and background color and settings for spellcheck
autocmd colorscheme * hi SpellBad cterm=None
autocmd colorscheme * hi SpellCap cterm=underline
autocmd colorscheme * hi SpellRare cterm=underline
set background=light
colorscheme pencil
hi SpellBad ctermfg=15 ctermbg=160 cterm=None
hi SpellCap ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellRare ctermfg=NONE ctermbg=NONE cterm=underline

" Airline theme
let g:airline_theme = 'pencil'

" Change the color for search
hi Search cterm=NONE ctermfg=black ctermbg=yellow
