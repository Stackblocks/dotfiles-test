""""""""""""""""""""""""""""""""""""
" VIM-PLUG CONFIG 
""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"""PLUGIN ZONE START"""
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'hrsh7th/nvim-cmp'
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-sneak'
Plug 'mg979/vim-visual-multi'
Plug 'mbbill/undotree'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

"""PLUGIN ZONE END"""
call plug#end()

""""""""""""""""""""""""""""""""""""
" SPECIFIC PLUGIN CONFIGS
""""""""""""""""""""""""""""""""""""
" Vim Sneak
" Enabel Label Mode
let g:sneak#label = 1
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" Dracula Pro
packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula_pro

""""""""""""""""""""""""""""""""""""
"" KEY REMAPS
""""""""""""""""""""""""""""""""""""
" PIANOROLL ESC
inoremap kj <esc>
cnoremap kj <C-C>$

" SET LEADER TO SPACE
let mapleader=" "
