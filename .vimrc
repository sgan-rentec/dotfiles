" Colors {{{
filetype indent on
syntax enable
colorscheme nord
set termguicolors
set number relativenumber
set splitbelow splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" Automatic installation {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"}}}

" ------------------------------------------------------------------------------
" Plugins {{{
call plug#begin('~/.vim/plugged')
" Vimtex is a latex plugin that provides syntax highlighting, table of contents
" view , synctex, etc.
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'   
"set concealcursor=nvc   "conceal always regardless of whether on current line
hi Conceal guibg=NONE guifg=Gold 

" Use UltiSnips to create snippets
"Plug 'sirver/ultisnips'
"let g:UltiSnipsExpandTrigger = '<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()
" }}}
" ------------------------------------------------------------------------------
" Spaces and Tabs {{{
set tabstop=4
set softtabstop=4
set expandtab
" }}}

" UI Config {{{
set number
set showcmd
set cursorline
"filetype indent on
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
