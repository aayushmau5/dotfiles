" Behaviour {{{ 
set tabstop=2 softtabstop=2             " Setting tab to 2 characters(cause I'm a psychopath)
set shiftwidth=2
set expandtab                           " Converts tabs into spaces
set smartindent

set number
set relativenumber
set ruler
set noshowmode
set incsearch
set termguicolors
set cursorline                          " Highlight the line in which the cursor is present
set nohlsearch                          " Don't highlight the search
set ignorecase                          " Ignore cases during search

set background=dark
set signcolumn=auto                     " Adds an additional column(before the number line) for indicators and stuff

set conceallevel=0

" Some clipboard stuff
set clipboard=unnamedplus
set mouse=a

set scrolloff=8                         " Have a margin of 8 lines

set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors

set updatetime=300                      " Default update time is 4000ms or 4s

" }}}

" Plugins {{{
call plug#begin('~/.config/nvim/plugged') 
  
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " COC

  " Plug 'joshdick/onedark.vim'            " One dark theme
  " Plug 'vim-airline/vim-airline'         " Vim Airline for status line
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Tokyonight theme

  Plug 'preservim/nerdtree'              " Nerd Tree for tree style file explorer
  Plug 'ryanoasis/vim-devicons'          " For Icons
   
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " FZF(Fuzzy Finder)
  Plug 'junegunn/fzf.vim'

  Plug 'glepnir/dashboard-nvim'         " Nvim dashboard

  " Git
  Plug 'tpope/vim-fugitive'             " Git and friends
  Plug 'mhinz/vim-signify'              " Indicates the changes(add, modify, remove) in the sign column

  Plug 'jiangmiao/auto-pairs'           " Automatic pairing of characters
  " Plug 'preservim/nerdcommenter'        " Nerd Commenter for commenting and stuff

  " JS Stuff (Determines colors and stuff)
  Plug 'pangloss/vim-javascript'        " JS Syntax Highlighting
  Plug 'maxmellon/vim-jsx-pretty'       " JSX Syntax Highlighting
  Plug 'leafgarland/typescript-vim'     " TypeScript Highlighting
  Plug 'peitalin/vim-jsx-typescript'    " TSX Syntax Highlighting

  " LSP
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

  Plug 'gelguy/wilder.nvim'             " Adds more stuff to wild menu

call plug#end()
" }}}

" Settings {{{

filetype plugin on                      " Needed for `preservim/nerdcommenter`

colorscheme tokyonight

" let g:airline_theme = 'tokyonight'

let g:airline_powerline_fonts = 1       " For vim-devicons to set icons in powerline

let mapleader = "\<Space>"              " Maps leader key to space

let g:dashboard_default_executive ='fzf' " Set 'fzf' as finder for `dashboard-nvim`

" }}}

" Keymaps {{{

nmap <leader>gs :G<CR>

" <Insert> maps jk to <Esc>
inoremap jk <Esc>

" <Normal> <leader>s to save the current file
nnoremap <leader>s :w<CR>

" <Normal> J equals 5j etc.
nnoremap J 5j
nnoremap K 5k

" <Visual> J equals 5j etc.
vnoremap J 5j
vnoremap K 5k

" Toggles NerdTree
nnoremap <leader>t :NERDTreeToggle<CR>

" }}}

" COC {{{

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" To auto-import modules during suggestion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"         

" }}}

