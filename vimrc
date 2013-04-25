" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible               " be iMproved

" Vundle Config
filetype off                   " required!

set rtp+=~/.vim/vundle.git/
call vundle#rc()


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'
Bundle 'majutsushi/tagbar'
Bundle 'skammer/vim-css-color'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" color scheme
colorscheme slate

set backspace=indent,eol,start  "allow backspacing over everything in insert mode
set showcmd                     "show incomplete cmds down the bottom
set showmode                    "show current mode down the bottom
set nobackup                    "don't backup files

set incsearch                   "find the next search as we type the search
set hlsearch                    "highlight searchs
set ignorecase                  "case-insensitive search

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set number
set ruler
set terse
set scrolloff=5


" always show tabs in gvim, but not vim
" and show tab number in tab label
set showtabline=2
au VimEnter * set guitablabel=%N)\ %M%t

" autosave everything when losing focus, ignore warnings from untitled buffers
au FocusLost * silent! wa

" mapping
let mapleader=","

let g:CommandTMaxHeight=20

nnoremap <f1> :NERDTreeToggle<cr>
nnoremap <f2> :TagbarToggle<cr>

" key maps

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

