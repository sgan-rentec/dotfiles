" SG
" Colors {{{
syntax enable
colorscheme badwolf 
set termguicolors
" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" }}}

" Spaces and Tabs {{{
set tabstop=4
set softtabstop=4
set expandtab
" }}}

" UI Config {{{
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
" }}}

" Searching {{{
set incsearch
set hlsearch
noremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
" }}}

" Movement {{{
" move vertically by visual line
noremap j gj
noremap k gk
" highlight last inserted text
noremap gV '[v']
"}}}
