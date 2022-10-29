call plug#begin()
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'preservim/nerdtree'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'nvim-lua/lsp_extensions.nvim'
  Plug 'mattn/vim-lsp-settings'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua require('plugins')

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set background=dark
colorscheme dracula

set relativenumber
set nowrap

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
