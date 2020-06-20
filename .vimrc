set nocompatible
set number
set relativenumber
syntax on
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set softtabstop=4
set wrap
set linebreak
set scrolloff=5
set laststatus=2
set ruler
set showmatch
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。
set list
set listchars=tab:···,trail:·
set backspace=indent,eol,start"
set wildmenu
set wildmode=longest:list,full

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'mhinz/vim-startify'
Plug 'lfv89/vim-interestingwords'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'


call plug#end()

let mapleader=';'
nmap ss <Plug>(easymotion-s2)
nnoremap <leader>t :NERDTreeToggle<CR>

" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

nnoremap <leader>g :TagbarToggle<CR>


" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" ctrlP ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


