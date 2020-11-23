set hidden                              " Required to keep multiple buffers open multiple buffers
set encoding=utf-8                      " The encoding displayed
set fileencoding=utf-8                  " The encoding written to file
set ruler            	                	" Show the cursor position all the time
set mouse=a                             " Enable your mouse
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set expandtab
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set nu rnu                              " Line numbers and relative numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs

" ---
" Emmet
" ---
let g:user_emmet_leader_key=','

" ---
" NERDTree
" ---
let NERDTreeShowHidden=1

" ---
" Completion Vim
" ---

set completeopt=menuone,noinsert,noselect	" Set completeopt to have a better completion experience
set shortmess+=c 			" Avoid showing message extra message when using completion

