" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Turn relative line numbers on
:set relativenumber
:set rnu

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" sett system clipboard as default one
" set clipboard+=unnamdplus

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{
"

call plug#begin('~/.vim/plugged')

" syntax checking and semantic errors
Plug 'dense-analysis/ale'

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'jiangmiao/auto-pairs'

Plug 'lyokha/vim-xkbswitch'

Plug 'tpope/vim-commentary'

Plug 'tanvirtin/monokai.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'kyazdani42/nvim-tree.lua'

Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

colorscheme monokai 

hi Normal guibg=NONE ctermbg=NONE

let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']
let g:XkbSwitchNLayout = 'us'
let g:XkbSwitchILayout = 'us'

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" semicolons <=> colons
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
