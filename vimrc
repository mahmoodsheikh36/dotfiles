" start vundle shit ===============================>
set nocompatible              " be iMproved, required for vundle
filetype off                  " required, required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim' 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

set smartindent
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
" set smartcase " search will be case sensitive if it contains uppercase
set ignorecase
" exit buffer without closing window
nnoremap <C-c> :bp\|bd #<CR>
set incsearch

let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set bg=dark
set cursorline
set cursorcolumn
highlight CursorLine ctermfg=None cterm=bold term=bold ctermbg=235
" autocmd InsertLeave * highlight CursorLine ctermbg=53 ctermfg=None cterm=bold term=bold
autocmd InsertLeave * highlight CursorLine ctermfg=None cterm=bold term=bold ctermbg=235
autocmd InsertEnter * highlight CursorLine ctermfg=None ctermbg=233
highlight CursorColumn ctermfg=None cterm=bold term=bold ctermbg=235
autocmd InsertEnter * highlight CursorColumn ctermfg=None ctermbg=233
autocmd InsertLeave * highlight CursorColumn ctermfg=None cterm=bold term=bold ctermbg=235

set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular

" fix delay on esc+shift+o
set timeout timeoutlen=5000 ttimeoutlen=100

" change visual mode highlight color
" hi Visual term=reverse ctermbg=234 guibg=Grey
" hi Search term=reverse ctermbg=234 guibg=Grey

" make comments in italic font
hi comment term=italic cterm=italic

" to enable recursive file finding
set path+=**

" for airline
set encoding=utf-8
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'
let g:airline_theme='angr'

nnoremap Y y$
inoremap <C-e> <Esc><C-e>a
inoremap <C-y> <Esc><C-y>a

" C-n to start nerdtree
map <C-n> :NERDTreeToggle<CR>
" relative numbers for nerdtree
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
" nerd tree key mapping
autocmd FileType nerdtree nmap <buffer> <Tab> <Enter>
autocmd FileType nerdtree nmap <buffer> dd mdy

" start nerdtree when vim starts
" autocmd vimenter * NERDTree
" exit vim if the only window left open is nerdtree's
autocmd BufEnter * nested if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set background=dark
set t_Co=256
