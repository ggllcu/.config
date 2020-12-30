" Lightline
let g:lightline = {
      \ 'colorscheme': 'monokai_pro',
      \ }

" Always show tab
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif

set termguicolors
colorscheme monokai_pro
