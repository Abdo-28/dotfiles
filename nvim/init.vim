call plug#begin('~/.local/share')

Plug 'lambdalisue/fern.vim'
Plug 'ap/vim-css-color'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tree-sitter/tree-sitter'
Plug 'ms-jpq/coq_nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'andweeb/presence.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()


map <F10> <cmd>PlugUpgrade<cr> <cmd>PlugInstall<cr> <cmd>PlugUpdate<cr> q

let mapleader = "\<space>"

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>d <cmd>Fern %:h -drawer<cr>

set number relativenumber

colorscheme catppuccin-mocha

hi Normal guibg=NONE ctermbg=NONE

set clipboard+=unnamedplus
