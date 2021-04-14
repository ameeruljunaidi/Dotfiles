"l Initialize pencil for filetypes
" Have to put it here cause it didn't work in ftplugin
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,rmarkdown,pandoc call pencil#init({'wrap': 'hard', 'autoformat': 0, 'conceallevel' : 2})
                                             \ | call lexical#init()
                                             \ | call litecorrect#init()
  autocmd FileType tex,tex.python                call pencil#init({'wrap': 'hard', 'autoformat': 0, 'conceallevel' : 0})
                                             \ | call lexical#init()
                                             \ | call litecorrect#init()
augroup END

" Set mapping to suspend autoformat in next insert mode
let g:pencil#map#suspend_af = 'K'

" Set the width before newline
let g:pencil#textwidth = 88

" Set the default thesaurus path - dictionary and spell fiepath is default
let g:lexical#thesaurus = ['~/.vim/thesaurus/mthesaur.txt']
