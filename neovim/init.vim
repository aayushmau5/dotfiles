" Use :h <key> to get help
set tabstop=2 softtabstop=2             " Setting tab to 2 characters(cause I'm a psychopath)
set shiftwidth=2
set expandtab                           " Converts tabs into spaces
set smartindent

set number
set relativenumber
set noshowmode
set incsearch
set termguicolors
set cursorline                          " Highlight the line in which the cursor is present
set nohlsearch                          " Don't highlight the search
set ignorecase                          " Ignore cases during search

" Some clipboard stuff
set clipboard=unnamedplus
set mouse=a

set scrolloff=8                         " Have a margin of 8 lines

set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors

set updatetime=300                      " Default update time is 4000ms or 4s

" Vim Plug
call plug#begin('~/.config/nvim/plugged') 
  
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " COC

  " Plug 'tomasiser/vim-code-dark'         " VSCode theme for vim

  Plug 'joshdick/onedark.vim'            " One dark theme
  Plug 'vim-airline/vim-airline'         " Vim Airline for status line

  Plug 'preservim/nerdtree'              " Nerd Tree for tree style file explorer
  Plug 'ryanoasis/vim-devicons'          " For Icons

   
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " FZF(Fuzzy Finder)
  Plug 'junegunn/fzf.vim'

  Plug 'glepnir/dashboard-nvim'         " Nvim dashboard

  Plug 'tpope/vim-fugitive'             " Git and friends

  Plug 'jiangmiao/auto-pairs'           " Automatic pairing of characters
  " Plug 'preservim/nerdcommenter'        " Nerd Commenter for commenting and stuff

  " JS Stuff
  Plug 'pangloss/vim-javascript'        " JS Syntax Highlighting
  Plug 'maxmellon/vim-jsx-pretty'       " JSX Syntax Highlighting
  Plug 'leafgarland/typescript-vim'     " TypeScript Highlighting
  Plug 'peitalin/vim-jsx-typescript'    " TSX Syntax Highlighting

call plug#end()

" filetype plugin on                      " Needed for `preservim/nerdcommenter`

colorscheme onedark
let g:airline_theme ='onedark'
let g:airline_powerline_fonts = 1       " For vim-devicons to set icons in powerline

" colorscheme codedark
" let g:airline_theme = 'codedark'        " VScode theme for airline 

let mapleader = "\<Space>"              " Maps leader key to space


let g:dashboard_default_executive ='fzf' " Set 'fzf' as finder for `dashboard-nvim`

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

"############################# COC #############################

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

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

"########################################################
