unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim
set clipboard=unnamedplus
set number
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"
"config the problem with json file type
"autocmd BufNewFile,BufRead *.jsonc set filetype=json
"let g:vim_jason_syntax_conceal = 0
set tabstop=4       " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
set expandtab       " Use spaces instead of tabs
