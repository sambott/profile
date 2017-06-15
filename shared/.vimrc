set nocompatible
syntax on

"set t_Co=256
set relativenumber number
set ruler
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showcmd
set ignorecase
set smartcase
set gdefault
set hidden
set virtualedit+=block
set enc=utf-8
set cul
set vb
set laststatus=2

set completeopt=menuone ",preview
set pumheight=15

" Better Search
set hlsearch
set incsearch

set scrolloff=5

set wildmenu
set mouse=a " use mouse everywhere
set wildmode=list:longest " turn on wild mode huge list
set backspace=indent,eol,start " make backspace a more flexible

set showcmd " show the command being typed
set showmatch " show matching brackets

" History and backup
set viminfo='10,:20,\"100,n~/.viminfo
set history=1000
set nobackup
set nowritebackup
set noswapfile

set clipboard=unnamed

let g:mapleader = " "
let g:maplocalleader = " "

cmap W! w !sudo tee % >/dev/null

nnoremap <silent> <c-n> :NERDTreeToggle<CR>
nnoremap <silent> <c-m> :NERDTreeCWD<CR>

nnoremap <silent> <leader>ev :tabe $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <silent> <leader>ez :tabe ~/.zshrc<CR>

nnoremap j gj
nnoremap k gk

vnoremap <           <gv
vnoremap >           >gv

" clean up windows file endings
nnoremap <leader>vl :%s/\r$<CR>
" strip all trailing whitespace from file
nnoremap <leader>vw :%s/\s\+$//<cr>:let @/=''<CR>

" ,s to show trailing whitespace
set listchars=tab:>-,trail:·,eol:$
nnoremap <silent> <leader>s :set nolist!<CR>

nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>

noremap <silent><leader>r <Esc>:RainbowParenthesesToggleAll<CR>


inoremap jj <ESC>

nmap <leader>mm :make<cr>
vmap <leader>mm :make<cr>

autocmd FileType yaml setlocal indentexpr=
autocmd FileType yaml setlocal shiftwidth=2

"format current line or selected (both command and insert modes)
nnoremap <C-I> :pyf ~/trunk/tools/clang-format/clang-format.py<CR>
vnoremap <C-I> :pyf ~/trunk/tools/clang-format/clang-format.py<CR>
inoremap <C-I> <ESC>:pyf ~/trunk/tools/clang-format/clang-format.py<CR>i

map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>

let g:pymode_folding = 0
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.os$']

call plug#begin('~/vimfiles/plugged')

Plug 'croaker/mustang-vim'
Plug 'sickill/vim-monokai'
Plug 'derekwyatt/vim-scala'
"Plug 'Valloric/YouCompleteMe'
"Plug 'klen/python-mode'
"Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

call plug#end()

if has('gui_running')
"  source $VIMRUNTIME/mswin.vim
"  behave mswin
  set guioptions-=T  " no toolbar
"  colorscheme monokai
  
  set guifont=Consolas:h10:cANSI
  set lines=50 columns=180
endif

"colorscheme monokai
"colorscheme mustang
colorscheme desert

nnoremap <silent> <leader>fb :Unite buffer<CR>
nnoremap <silent> <leader>ff :Unite file<CR>
nnoremap <silent> <leader>fc :Unite file_rec<CR>
nnoremap <silent> <leader>fr :Unite resume<CR>
nnoremap <silent> <leader>fu :Unite source<CR>

au BufRead,BufNewFile *.pp set filetype=ruby
