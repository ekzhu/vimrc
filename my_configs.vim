" Color scheme
syntax enable
set background=dark
colorscheme solarized
" The terminal app must use a solarized color palette to make the
" solarized color scheme work.

"set number

" For YouCompleteMe, only supports the official python distribution
" IMPORTANT: when recompiling YCM after update, need to specify the
" python to use as the system python.
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" For Go

let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" For tex
let g:syntastic_tex_checkers = []

" For python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

" For latex
autocmd Filetype tex setlocal expandtab tabstop=4 shiftwidth=4

" For racket
autocmd Filetype racket setlocal expandtab tabstop=2 shiftwidth=2

set colorcolumn=80
