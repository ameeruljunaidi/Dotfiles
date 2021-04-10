call plug#begin('~/.vim/plugged')

" General plugins
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-eunuch'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-scriptease'

" File management plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug '~/.fzf'
Plug 'preservim/nerdtree'
Plug 'schickling/vim-bufonly'
Plug 'airblade/vim-rooter'

" YCM and ultisnips plugins
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'

" Python plugins
Plug 'psf/black'
Plug 'vim-scripts/indentpython.vim'
Plug 'jpalardy/vim-slime', { 'for': ['python', 'rmarkdown']  }
Plug 'hanschen/vim-ipython-cell', { 'for': ['python', 'rmarkdown']  }
Plug 'nathanaelkane/vim-indent-guides', { 'for': 'python'  }
Plug 'sheerun/vim-polyglot'

" Sql related plugins
Plug 'b4b4r07/vim-sqlfmt'
Plug 'vim-airline/vim-airline'

" Theming plugins
Plug 'vim-airline/vim-airline-themes'
Plug 'reedes/vim-colors-pencil'
Plug 'morhetz/gruvbox'

" Markdown/latex plugins
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'pandoc', 'vim-plug']}
Plug 'lervag/vimtex'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-litecorrect'

call plug#end()
