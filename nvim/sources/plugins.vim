call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
  Plug 'lambdalisue/fern.vim'
  Plug 'LumaKernel/fern-mapping-fzf.vim'
	" Plug 'preservim/nerdtree'
	Plug 'joshdick/onedark.vim'
	Plug 'mattn/emmet-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'christoomey/vim-titlecase'
  " Plug 'wfxr/minimap.vim'
call plug#end()
