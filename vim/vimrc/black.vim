function! s:black_reinstall()
  " if using vim-plug: make sure the black plugin is loaded
  call plug#load('black')
  echom "BlackReinstall: Removing Black's virtualenv in ".g:black_virtualenv.'.'
  echom repeat('=', 72)
  python3 import os, shutil, vim; shutil.rmtree(os.path.expanduser(vim.eval("g:black_virtualenv")))
  BlackUpgrade
  echom repeat('=', 72)
  " again, the :PlugUpdate recommendation applies if using vim-plug
  echom 'BlackReinstall: If the issue persists, run :PlugUpdate black and retry reinstalling.'
endfunction

command! BlackReinstall :call s:black_reinstall()
