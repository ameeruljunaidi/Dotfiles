" Set the theme and background color and settings for spellcheck
" The spelling is commented, uncomment incase it doesn't work like last time

autocmd colorscheme * hi SpellBad cterm=None
autocmd colorscheme * hi SpellCap cterm=underline
autocmd colorscheme * hi SpellRare cterm=underline

set background=dark
colorscheme gruvbox

hi SpellBad ctermfg=white ctermbg=160 cterm=None
hi SpellCap ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellRare ctermfg=NONE ctermbg=NONE cterm=underline

" Airline theme
let g:airline_theme = 'gruvbox'

" Change the color for search
hi Search cterm=NONE ctermfg=black ctermbg=yellow
