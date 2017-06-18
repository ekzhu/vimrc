" Color scheme
syntax enable
set background=light
colorscheme solarized

" For YouCompleteMe, only supports the official python distribution
" IMPORTANT: when recompiling YCM after update, need to specify the
" python to use as the system python.
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" For python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
   project_base_dir = os.environ['VIRTUAL_ENV']
   sys.path.insert(0, project_base_dir)
   activate_this = os.path.join(project_base_dir,
   'bin/activate_this.py')
   execfile(activate_this, dict(__file__=activate_this))
EOF

" For latex
autocmd Filetype tex setlocal expandtab tabstop=4 shiftwidth=4

" For racket
autocmd Filetype racket setlocal expandtab tabstop=2 shiftwidth=2
