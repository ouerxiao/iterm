set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtim
" path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" plugin added by Xiao
Plugin 'tomlion/vim-solidity'
Plugin 'vim-syntastic/syntastic'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/nerdtree'
Plugin 'Chiel92/vim-autoformat'


" call vundle#end()            " required
filetype plugin indent on    " required

" ycm config 
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_filetype_whitelist = { "cpp":1, "zsh":1, "python":1}
let g:ycm_filetype_blacklist = { 'html':1, 'css':1}

" emmet config
set runtimepath+=~/.vim/bundle/emmet-vim
let g:user_emmet_leader_key=',' 

" nerdtree config
set runtimepath+=~/.vim/bundle/nerdtree
" auto open NERDTree
" autocmd vimenter * NERDTree
" open NERDTree w/ <C-n>
nmap <C-n> :NERDTreeToggle<CR>

"autoformat config
set runtimepath+=~/.vim/bundle/vim-autoformat
noremap <F3> :Autoformat<CR>

" Put your non-Plugin stuff after this line
"
" Added by   Xiao




" BASIC CONFIGURATION 
" css autocomplete
autocmd FileType css set omnifunc=csscoplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


" Remap Escape
inoremap jk <esc>

" Remap leader key to spacebar
let mapleader = "'"

" Run commands w/ semicolon
noremap ; :

" Save the current buffer using the leader key
" noremap <Leader>w :w<CR>

" Save and exit Vim using the leader key
" noremap <Leader>x :x<CR>

" Exit without saving using the leader key
" noremap <Leader>q :q!<CR>

" Enable syntax highlighting, make code look pretty
let python_highlight_all=1
syntax on

" set shell
set shell=/usr/local/bin/zsh

" clipboard functionality (pasted from system)
" vnoremap <leader>y "+y
" nnoremap <leader>y "+y
" nnoremap <leader>p "+p
" vnoremap <leader>p "+p

" Additional Configuration
set encoding=utf-8
set nocompatible
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
set laststatus=2
" set statusline=%F%m%r%h%w=\ [%Y]\ [%{&ff}]\ [%04l,%04v]\ [%p%%]\ [%L]
set statusline=%.20F\ -\ FileType:\ %y\ current:\ %4l\ Total:\ %4L\ %P

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding w/ spacebar
nnoremap <space>za

" proper PEP 8 indetation
au BufNewFile,BufRead 
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
    \ set autoindent
    \ set expandtab

" Flagging Unnecessary Whitespace
" au BufRead,BufNewFile *.py,*.c match BadWhitespace /\s\+$/


" Spelling
" nnoremap <leader>sp :set spell<CR>
" nnoremap <leader>s ]s
" nnoremap <leader>f 1zf

" line numbers
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>

" Clear highlighting
nnoremap <leader>c :nohl<CR>

" Past mode
" nnoremap <leader>pa :set nopaste!<CR>

" Pane navigation
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" kill the arrows keys
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>




