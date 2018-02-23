"Vundle
"------------------------------------------------------------------------------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugins')
Plugin 'VundleVim/Vundle.vim'
"vim-surround
Plugin 'https://github.com/tpope/vim-surround.git'
"ctrlp.vim
Plugin 'https://github.com/kien/ctrlp.vim.git'
"syntastic
Plugin 'https://github.com/vim-syntastic/syntastic.git'
"NERDtree
Plugin 'https://github.com/scrooloose/nerdtree.git'
"rust.vim
Plugin 'https://github.com/rust-lang/rust.vim.git'
"tComment
Plugin 'https://github.com/vim-scripts/tComment.git'
"fugitive
Plugin 'https://github.com/tpope/vim-fugitive.git'
"unimpaired
Plugin 'https://github.com/tpope/vim-unimpaired.git'
"vim-js-syntax
Plugin 'https://github.com/jelera/vim-javascript-syntax.git'
"Airline
Plugin 'https://github.com/vim-airline/vim-airline.git'
"neodark-scheme
Plugin 'https://github.com/KeitaNakamura/neodark.vim.git'
call vundle#end()
filetype plugin indent on
"------------------------------------------------------------------------------------
"general settings
"------------------------------------------------------------------------------------
syntax on
set t_Co=256
set number
set relativenumber
set laststatus=2
set showcmd
set confirm
set mouse=a
set tabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
set nowrap
set wildmenu
set path+=**
set splitbelow
set splitright
set timeoutlen=1000
set ttimeoutlen=0
set undofile
set undolevels=99999
set undodir=~/.vim/undo
set directory=~/.vim/swap
"------------------------------------------------------------------------------------
"key-mapping
"------------------------------------------------------------------------------------
let g:ctrlp_map='<Space>'
let NERDTreeMapToggleHidden='<C-h>'
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'
nnoremap <silent> <NUL> :NERDTreeToggle<CR>
cmap w!! w !sudo sh -c "cat > %"
"------------------------------------------------------------------------------------
"language-settings
"------------------------------------------------------------------------------------
autocmd FileType asm :set syntax=nasm
"------------------------------------------------------------------------------------
"colorscheme
"------------------------------------------------------------------------------------
colorscheme neodark
autocmd InsertEnter * :highlight Normal ctermbg=233
autocmd InsertLeave * :highlight Normal ctermbg=236
"folder settings
"------------------------------------------------------------------------------------
" :set exrc <-- be careful with this command
