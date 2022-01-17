set nu
set relativenumber
set expandtab
set ts=4
set autoindent
set softtabstop=4
set expandtab
set shiftwidth=4
set cursorline
set showmatch
set nohlsearch
set relativenumber
set so=15
set foldmethod=indent
set foldlevel=99
set completeopt=menuone,noselect

call plug#begin('C:\Users\727mo\AppData\Local\nvim\autoload\plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'hrsh7th/nvim-compe'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader=" "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.html.setup{
	capabilities = capabilities,
}
require'lspconfig'.denols.setup{}
EOF
