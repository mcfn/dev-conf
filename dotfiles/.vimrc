" vim config

syntax on        "high ligh syntax
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

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on

set shell=bash
set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=4                                             " normal mode indentation commands use 4 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=4                                            " insert mode tab and backspace use 2 spaces
set tabstop=4                                                " actual tabs occupy 4 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set t_Co=16
set cursorline

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
  "  source ~/.vimrc.bundles.local
endif


" Config power line
set laststatus=2
set t_Co=256
set enc=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936,iso-2022-jp,euc-jp,sjis
let g:Powerline_symbols = 'unicode'
set encoding=utf-8

" Config NERDTree
"let NERDTreeWinPos='right'  
let NERDTreeWinSize=31  
let NERDTreeChDirMode=1  
map <F2> :NERDTreeToggle<CR>  
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  
" autocmd VimEnter * NERDTree " open nerdtree when start up vim 

" no auto comment when parse
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
