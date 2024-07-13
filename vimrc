syntax on
set t_Co=256
set number
set relativenumber
set laststatus=2
set showcmd
set confirm
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
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

colorscheme torte
autocmd InsertEnter * :highlight Normal ctermbg=234
autocmd InsertLeave * :highlight Normal ctermbg=256

au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
au InsertEnter,InsertChange *
\ if v:insertmode == 'i' |
\   silent execute '!echo -ne "\e[5 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[3 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!

cmap w!! w !sudo sh -c "cat > %"
