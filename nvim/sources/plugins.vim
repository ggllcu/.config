call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'

  " Plug 'posva/vim-vue'
  Plug 'leafOfTree/vim-vue-plugin'
  Plug 'lambdalisue/fern.vim'
  Plug 'LumaKernel/fern-mapping-fzf.vim'

  Plug 'sheerun/vim-polyglot'
  Plug 'phanviet/vim-monokai-pro'

	Plug 'mattn/emmet-vim'

	" Plug 'vim-airline/vim-airline'
	" Plug 'vim-airline/vim-airline-themes'
  Plug 'itchyny/lightline.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'christoomey/vim-titlecase'
  Plug 'vimwiki/vimwiki' 
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'

  Plug 'dbeniamine/cheat.sh-vim'
call plug#end()
