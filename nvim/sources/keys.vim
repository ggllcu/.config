" ---
" window
" ---

let mapleader = "\<Space>"

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>	
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" ---
" vim 
" ---

inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-c> <Esc>

" ---
" fzf 
" ---

nnoremap <C-p> :GFiles<CR>
map <C-f> :Files<CR>
map <leader>f :Files<CR>
map <leader>b :Buffers<CR>
map <C-Up> :preview-up<CR>
map <C-Down> :preview-down<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>m :Marks<CR>

" ---
" lsp 
" ---

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

" ---
" Fern
" --- 

nnoremap <leader>1 :Fern . -drawer -toogle <CR>
nnoremap <leader>2 :Fern . -toogle <CR>

" ---
" VimWiki
" --- 



" ---
" Completion
" ---

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
