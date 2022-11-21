""""""""""""""""""""""""""""""""""""
" PLUG ROLL CALL 
""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""PLUGIN ZONE START"""
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'francoiscabrol/ranger.vim'
Plug 'hrsh7th/nvim-cmp'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'justinmk/vim-sneak'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mg979/vim-visual-multi'
Plug 'mbbill/undotree'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

"""PLUGIN ZONE END"""
call plug#end()

""""""""""""""""""""""""""""""""""""
" SETS
""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start
set cmdheight=1
set colorcolumn=80
set expandtab
set exrc
set guicursor=
set hidden
set ignorecase
set incsearch
set laststatus=2
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set number
set relativenumber
set scrolloff=6
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set signcolumn=yes
set smartcase
set smartindent
set tabstop=4 softtabstop=4
set undodir=~/.vim/undodir
set undofile

""""""""""""""""""""""""""""""""""""
" PETIT PLUGIN CONFIGS
""""""""""""""""""""""""""""""""""""
" FZF
nnoremap <leader>p :<C-u>FZF<CR>

" Vim Sneak
" Enabel Label Mode
let g:sneak#label = 1
map <leader>f <Plug>Sneak_f
map <leader>F <Plug>Sneak_F
map <leader>t <Plug>Sneak_t
map <leader>T <Plug>Sneak_T
map <leader>s <Plug>Sneak_s
map <leader>S <Plug>Sneak_S

" Dracula Pro
packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula_pro

""""""""""""""""""""""""""""""""""""
"" KEYMAPS 
""""""""""""""""""""""""""""""""""""
" PIANOROLL ESC
inoremap kj <esc>
cnoremap kj <C-C>$

" SET LEADER TO SPACE
let mapleader=" "

""""""""""""""""""""""""""""""""""""
" COMMANDS
""""""""""""""""""""""""""""""""""""
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor
