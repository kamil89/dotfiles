set nocompatible
set nobackup
set nowritebackup
set noswapfile

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

set incsearch " incremental searching
set hlsearch " highlight search matches
set ignorecase
set smartcase
nnoremap <leader><space> :nohlsearch<CR>

set ruler
set autoread
set number
set numberwidth=5
set laststatus=2
set showmatch
set showcmd
set wildmode=list:longest,list:full
set complete=.,w,t

set backspace=indent,eol,start

set list
set listchars=tab:▸\ ,eol:¬,trail:·

set tabstop=2
set shiftwidth=2
set expandtab

nnoremap j gj
nnoremap k gk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap jk <esc>
set splitbelow
set splitright
let base16colorspace=256
syntax enable
set background=dark
colorscheme base16-default

" Move lines
" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Copy Text to clipboard
vmap <C-c> "+y
" Cut text to clipboard
vmap <C-x> "+d

" Set mapleader
let mapleader=';'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':'\.git$\|\.sass-cache$|\.hg$\|\.svn$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
