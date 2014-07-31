" vim config

syntax on        "high ligh syntax
set number        "show line number
"set cursorline        " high ligh current line
set ruler        " show status bar
set tabstop=4        " set tab lenght
set nobackup        " no backup when overwite file
set autochdir        " auto set current dir to current file's dir
set ignorecase smartcase        " ignore up-lower letter when search
set incsearch        " show search result when inputing search query
set hlsearch        " highline search result when search

set smartindent        " when create new line, auto indent

set noswapfile	"no swap file"

set cursorline
hi CursorLine cterm=NONE ctermbg=8 ctermfg=15
hi Cursor ctermbg=15 ctermfg=8

filetype plugin indent on        " open plugin mode

" vundle {
set rtp+=~/.vim/bundle/vundle/
" " 如果在windows下使用的话，设置为 
" set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()
" " }
" "
" " let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'

Bundle 'The-NERD-Commenter'
Bundle 'Lokaltog/vim-powerline'

" Config power line
set laststatus=2
set t_Co=256
set enc=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936,iso-2022-jp,euc-jp,sjis
let g:Powerline_symbols = 'unicode'
set encoding=utf-8

Bundle 'scrooloose/nerdtree'  
"let NERDTreeWinPos='right'  
let NERDTreeWinSize=31  
let NERDTreeChDirMode=1  
map <F2> :NERDTreeToggle<CR>  
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  
" autocmd VimEnter * NERDTree " open nerdtree when start up vim 


" no auto comment when parse
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
