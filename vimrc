set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-repeat'
Plugin 'svermeulen/vim-easyclip'
Plugin 'moll/vim-bbye'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on


" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set mouse=a
set nu
set encoding=utf-8
set laststatus=2

set clipboard=unnamed

"Auto reload file
set autoread
"Show line number
set number
"Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"Turn on the Wild menu
set wildmenu
"Always show current position
set ruler
"Height of th cmd
set cmdheight=1
"Show matching brackets when text indicator is over them
set showmatch
"How many tenths of a second to blink when matching brackets
set mat=2
"Split to right
set splitright

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Enable syntax highlighting
syntax enable

"Colorscheme
colorscheme monokai

if !has('gui')
        set term=xterm-256color
end

set t_Co=256
set ttymouse=xterm2

set background=dark

set guioptions-=r
set guioptions-=L
set guifont=Source\ Code\ Pro:h14
if has('gui_running')
    set gcr=a:blinkon0
endif

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set shiftround                  "Round spaces to nearest shiftwidth multiple
set nojoinspaces                "Don't convert spaces to tabs
set expandtab

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

map <F12> :YcmCompleter GoTo<CR>

" Plugin settings
let g:ycm_confirm_extra_conf = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

map <F2> <C-w>h
map <F3> <C-w>l
command Workspace :80vsplit input.txt <bar> 40vsplit output.txt


" Like a pro
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>
"inoremap <Up> <Nop>
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>

au filetype cpp set makeprg=c++\ -Wall\ -Wextra\ -O2\ -std=c++11\ -o\ r_%:r.out\ %\ &&\ ./r_%:r.out
