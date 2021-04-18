" General settings
syntax on
set noerrorbells
set belloff=all
set vb t_vb=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set rnu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set encoding=utf-8
set clipboard=unnamedplus
set ts=4 sw=4 et
set laststatus=2
set viminfo='100,<1000,s100,h
set mouse=a
set guicursor+=a:blinkon0
set guicursor-=a:blinkon0
set guicursor&
set hlsearch
set nocompatible
set thesaurus+=~/.vim/thesaurus/mthesaur.txt
set autochdir
set hidden
set iskeyword+=-
set iskeyword+=_
set splitbelow 
set splitright 
set smarttab
" set cursorline
" set ruler
set noshowmode
set noshowcmd
set shortmess+=F
set omnifunc=syntaxcomplete#Complete
set nowrap
" set nowrapscan
set textwidth=88
set autoindent
set smartindent
set formatoptions=tcq
set comments +=fb:*,fb:*,fb:-,fb:+,n:>
filetype plugin on

" Auto source
au! BufWritePost $MYVIMRC source %

" Remap leader
let mapleader = " "

" Settings for cursor
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Indenting settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" Autosave settings
let g:auto_save = 0
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save_silent = 1
" let g:auto_save_write_all_buffers = 1

" Something for the xlaunch thing, I think
" if empty(v:servername) && exists('*remote_startserver')
"     call remote_startserver('VIM')
" endif

" Markdown preview settings
let g:mkdp_command_for_global = 1
