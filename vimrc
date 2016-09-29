" VIM CONFIG
set number " show line numbers
set nocompatible
set term=screen-256color
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" VUNDLE CONFIG
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'StanAngeloff/php.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mhinz/vim-startify'
Plugin 'kien/ctrlp.vim'
Plugin 'petelewis/vim-evolution'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
Plugin 'fcevado/molokai_dark'
Plugin 'atweiden/vim-colors-behelit'
Plugin 'mattn/emmet-vim'
Plugin 'evidens/vim-twig'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/powerline'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()            " required
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colo behelit

" CTRLP CONFIG
let g:ctrlp_show_hidden = 1

" STATUS LINE
let g:airline#extensions#tabline#enabled = 1

" RUBY CONFIG
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_fold = 1
autocmd FileType ruby compiler ruby

" KEY MAPPING
nnoremap <C-n> :NERDTreeTabsToggle<CR>
nnoremap <F12> :TagbarToggle<CR>
nnoremap <C-j> <C-W><C-J><CR>
nnoremap <C-k> <C-W><C-K><CR>
nnoremap <C-l> <C-W><C-L><CR>
nnoremap <C-h> <C-W><C-H><CR>
inoremap <F3> <c-o>:w<cr>
map <C-w> :tabclose<CR>
map <F9> :tabp<CR>
map <F10> :tabn<CR>
