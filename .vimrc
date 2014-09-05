set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'ctrlp.vim'
Plugin 'AutoComplPop'
Plugin 'toggle_mouse'
Plugin 'flazz/vim-colorschemes'
Plugin 'rails.vim'
" Now we can turn our filetype functionality back on
filetype plugin indent on

set history=700
set autoread
set wildmenu
set ruler
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set nohlsearch
set hlsearch
set incsearch
set showmatch
set mat=2
set cursorcolumn
set cursorline
set splitbelow
set splitright

let g:solarized_termcolors=256
syntax enable
set background=light
colorscheme solarized
set t_Co=256

set ffs=unix,dos,mac
set scrolloff=3
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set number
set synmaxcol=250
set colorcolumn=100
let &winheight = &lines *7 /10
set wiw =105
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
"
set runtimepath^=~/.vim/bundle/ctrlp.vim
"cntrl p stuff"
"this is a temp fix for random letters


let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
let g:ctrlp_max_files = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_max_depth = 40
let g:ctrlp_working_path_mode = 'rac'
let g:ctrlp_by_filename = 0
let g:ctrlp_mruf_max = 250
let g:ctrlp_regexp =0
let g:ctrlp_max_height = 15
let g:ctrlp_clear_cache_on_exit =0
let g:ctrlp_use_caching = 1


" open from last closed
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

augroup END
"don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")

	if buflisted(l:alternateBufNum)
	   buffer #
        else
	     bnext	
        endif
	if bufnr("%") == l:currentBufNum
	  new
	endif
       if buflisted(l:currentBufNum)				       execute("bdelete! ".l:currentBufNum)
       endif 
endfunction
""" maps

