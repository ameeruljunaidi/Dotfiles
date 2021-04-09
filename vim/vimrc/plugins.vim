call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
" Plug 'psf/black', { 'branch': 'stable' }
Plug 'psf/black'
Plug 'vim-scripts/indentpython.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'jpalardy/vim-slime', { 'for': ['python', 'rmarkdown']  }
Plug 'hanschen/vim-ipython-cell', { 'for': ['python', 'rmarkdown']  }
Plug 'nathanaelkane/vim-indent-guides', { 'for': 'python'  }
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-eunuch'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'b4b4r07/vim-sqlfmt'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'pandoc', 'vim-plug']}
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-litecorrect'
Plug 'skywind3000/asyncrun.vim'
Plug '~/.fzf'
Plug 'schickling/vim-bufonly'
Plug 'lervag/vimtex'
Plug 'tpope/vim-scriptease'

call plug#end()
