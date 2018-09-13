syntax on
set mouse=a
set number
set smartcase
set autoindent
set hlsearch
set showmatch
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/dylanaraps/wal.vim'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/thinca/vim-quickrun'
Plug 'https://github.com/vim-airline/vim-airline'
call plug#end()
colorscheme wal
map <C-n> :NERDTreeToggle<CR>
