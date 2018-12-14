" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug '~/.fzf'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'docunext/closetag.vim'
Plug 'Ardakilic/vim-tomorrow-night-theme'
Plug 'nelsyeung/twig.vim'
Plug 'maksimr/vim-jsbeautify'

call plug#end()

set background=dark
colorscheme Tomorrow-Night

set updatetime=1000


filetype plugin indent on
filetype plugin on
let NERDTreeShowHidden=1


syntax on

set matchtime=0
set hidden
set number
set laststatus=2
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=99
set expandtab
set ignorecase
set smartcase
set hlsearch
set incsearch
set noerrorbells
set nobackup
set noswapfile
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set nolist
set showbreak=↪
set backspace=indent,eol,start
set scrolloff=3
set title
set foldenable
set foldmethod=syntax
set nofoldenable
set wildignore+=.DS_Store,node_modules,*/tmp/*,*.so,*.swp,coverage,tests/roles/*
set wildmenu
set wildmode=list:longest
set shell=/bin/zsh

nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

map ; :FZF<CR>
map <C-o> :NERDTreeToggle<CR>
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>
