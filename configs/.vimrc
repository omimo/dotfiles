filetype plugin indent on
syntax on
set backspace=2

set tabstop=4
set shiftwidth=4
set expandtab

if has("termguicolors")
    set termguicolors
endif

if &term =~# '^screen'
    let &t_8f = "[38:2:%lu:%lu:%lum"
    let &t_8b = "[48:2:%lu:%lu:%lum"
endif

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif

call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'

Plug 'majutsushi/tagbar'

Plug 'flazz/vim-colorschemes'

call plug#end()

"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"

colorscheme gruvbox
