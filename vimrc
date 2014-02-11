filetype off
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" project tree
Bundle 'scrooloose/nerdtree'
" make nerdtree and tabs behave nicely
Bundle 'jistr/vim-nerdtree-tabs'
" multiple cursors for vim
Bundle 'terryma/vim-multiple-cursors'
" git wrapper
Bundle 'tpope/vim-fugitive'
" move faster through the code with
Bundle 'EasyMotion'
" change surrounding block characters
Bundle 'surround.vim'
" Autocomplete braces, quotes, etc
Bundle 'delimitMate.vim'
" autocompletion
" Bundle 'Valloric/YouCompleteMe'
" snippets
Bundle 'snipMate'
" comment and uncomment code
Bundle 'comments.vim'
" show diff next to line number
Bundle 'airblade/vim-gitgutter'
" multiple cursors
Bundle 'terryma/vim-multiple-cursors'
" nicer status line
Bundle 'bling/vim-airline'
" Zencoding
Bundle 'ZenCoding.vim'
" Syntaxes
Bundle 'Markdown'
Bundle 'vim-coffee-script'
Bundle 'lunaru/vim-less'
Bundle 'leafgarland/typescript-vim'
Bundle 'derekwyatt/vim-scala'

" Settings

syntax enable
set background=dark
colorscheme desert

syntax on
filetype plugin indent on

set nocompatible                  " Disable vi-compatibility
set laststatus=2                  " Always show the statusline
set encoding=utf-8                " Necessary to show Unicode glyphset nocompatible
set noswapfile                    " Don't use swapfile
set nobackup                      " Don't create annoying backup files
set splitright                    " Split vertical windows right to the current windows
set splitbelow                    " Split horizontal windows below to the current windows
set autowrite                     " Automatically save before :next, :make etc.
set autoread                      " Automatically reread changed files
set nofoldenable                  " Disable folding

set number                        " show line number
set mouse=a                       " mouse support
set mousehide                     " hide mouse when typing

set hlsearch                      " highlight search matches
set incsearch                     " highlight as you type
set showmatch                     " jump briefly to matching parenthesis
set ignorecase                    " case insensitive search
set smartcase                     " ... but not when pattern contains upper case characters
set history=1000                  " length of commands history
set cursorline                    " highlight current line

set autoindent                    " copy indent from previous line when new one
set expandtab                     " spaces isntead of tabs
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set wildmenu                      " better autocompletion for vim commands
set wildmode=list:longest,full
set wildignore=*.o,*~,*.pyc,*.pyo,*.so,*.sw*,__pycache__

set switchbuf=usetab,newtab       " open new buffers always in new tabs

" Mappings
let mapleader="-"
map <leader>t :NERDTreeToggle<cr>
" Easy window navigation
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" Zen Coding
let g:user_zen_expandabbr_key='<d-e>'

" keep visual block after identing
vmap < <gv
vmap > >gv

" Airline
let g:airline_theme='dark'
let g:airline_enable_fugitive=1
let g:airline_powerline_fonts=0

" Nerdtree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" Create line break when pressing enter
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1

" Multicursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<D-d>'
let g:multi_cursor_prev_key='<D-u>'
let g:multi_cursor_skip_key='<D-k>' "until we got multiple keys support
let g:multi_cursor_quit_key='<Esc>'
