syntax on
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
call plug#end()
colorscheme wal
