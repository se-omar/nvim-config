set nocompatible
let mapleader=" "
set visualbell
set ignorecase
set smartcase
set relativenumber
set showmode
set so=5
set incsearch
set nu
inoremap jk <Esc>
noremap <leader>h H
noremap <leader>l L
noremap <leader>m M
noremap L $
noremap H ^
set clipboard=unnamed
nnoremap x "_x
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
" nnoremap <C-p> :GFiles<Cr>


call plug#begin()
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'LunarWatcher/auto-pairs'
" Plug 'maxboisvert/vim-simple-complete'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

Plug 'neoclide/coc.nvim', {'branch': 'release'}
set updatetime=300
set signcolumn=yes
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"


call plug#end()
colorscheme onedark
