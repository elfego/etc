" vim config
"

set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set nohlsearch
set colorcolumn=80
set autochdir
set hidden

let mapleader = ' '

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ap/vim-buftabline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-lua/plenary.nvim'

call plug#end()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
imap <C-_> <Esc><Plug>NERDCommenterToggle<cr>i

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Buffers, tabs and windows
nmap <leader><S-e> :bp<CR>
nmap <leader>e :bn<CR>
nmap <leader>n :wincmd w<cr>
nmap <leader>i g<Tab>
nmap <leader>q :close<cr>

" Tagbar
nmap <F8> :TagbarToggle<cr>

" indent/unindent with tab/shift-tab
nmap <Tab> >>
nmap <S-Tab> <<
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv

" mouse usage
set mouse=""
let g:is_mouse_enabled=0
noremap <silent> <leader>m :call ToggleMouse()<cr>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=""
        let g:is_mouse_enabled=0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled=1
    endif
endfunction
        
