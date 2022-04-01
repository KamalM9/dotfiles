call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
call plug#end()

" Set termguicolors
"set nocompatible
"if (has("termguicolors"))
"  set termguicolors
"endif
syntax enable

" Set hybrid line numbers
set nu rnu

" Set colorscheme
colorscheme nord

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Telescope maps
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Fugitive maps
nmap <leader>gs :G<cr>
nmap <leader>gj :diffget //3<cr>
nmap <leader>gf :diffget //2<cr>

" Auto-start COQnow
augroup COQ 
        autocmd!
        autocmd VimEnter * COQnow -s
augroup END

