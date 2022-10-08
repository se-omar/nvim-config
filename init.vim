set nocompatible
" nnoremap <SPACE> <Nop>
let mapleader=" "
set visualbell
set ignorecase
set smartcase
set relativenumber
set showmode
set so=2
set incsearch
set nu

inoremap jk <Esc>
noremap <leader>h H
noremap <leader>l L
noremap <leader>m M
noremap L $
noremap H ^
" noremap gj o<Esc>
" noremap gk O<Esc>
" noremap t <C-r>
set clipboard=unnamed
" nmap <Leader>c ciw
" nmap <Leader>d diw
" nmap <Leader>y yiw
" nnoremap <leader>a ggVG
nnoremap x "_x
" onoremap ( i(
" onoremap " i"
" onoremap { i{
" onoremap < i<
" onoremap ' i'
xnoremap p pgvy
nnoremap U J
noremap <leader>n :noh<CR>
" noremap <leader>sf vaBo0
noremap J gT
noremap K gt
nmap <C-g> gb
vnoremap <C-g> gb
set hlsearch
nnoremap <esc> :noh<CR>
" nnoremap <esc>^[ <esc>^[
nnoremap <C-p> :GFiles<Cr>


call plug#begin()
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'LunarWatcher/auto-pairs'
Plug 'maxboisvert/vim-simple-complete'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
call plug#end()
