"
" nvim config
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
set autoread
set hidden

let mapleader = ' '

call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'dense-analysis/ale'
Plug 'ap/vim-buftabline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
"Plug 'SirVer/ultisnips'
"Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ycm-core/YouCompleteMe'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-jedi'
Plug 'vim-utils/vim-man'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

" Colour scheme
if (has("termguicolors"))
    set termguicolors
endif
colorscheme gruvbox
let g:airline_theme='gruvbox'
lua require 'colorizer'.setup()

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
imap <C-_> <Esc><Plug>NERDCommenterToggle<cr>i

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" UndoTree
nmap <F3> :UndotreeToggle<cr>

" Buffers, tabs and windows
nmap <silent> <leader>[ :bp<CR>
nmap <silent> <leader>] :bn<CR>
nmap <silent> <leader>n :wincmd w<cr>
nmap <silent> <leader>i g<Tab>
nmap <silent> <leader>q :close<cr>
nmap <silent> <leader>w :bp<bar>bd#<cr>

" Transposition of lines and characters
nnoremap <silent> <C-space> v
inoremap <silent> <C-space> <Esc><Right>v
nnoremap <A-Up> :m .-2<CR>
nnoremap <A-Down> :m .+1<CR>
inoremap <A-Up> <Esc>:m .-2<CR>gi
inoremap <A-Down> <Esc>:m .+1<CR>gi
vnoremap <A-Up> :m '<-2<CR>gv
vnoremap <A-Down> :m '>+1<CR>gv
nnoremap <C-t> xp
inoremap <C-t> <Esc>xpi
nnoremap <C-u> d0
nnoremap <C-k> d$
inoremap <C-u> <Esc><Right>d0I
inoremap <C-k> <Esc><Right>d$A

" Tabs
let g:airline#extensions#tabline#enable=2
let g:airline#extensions#tabline#fnamemode=':t'

" Ultisnips
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
"let g:UltiSnipsExpandTrigger="<Tab>"
"let g:UltiSnipsJumpForwardTrigger="<Tab>"
"let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Tagbar
nmap <F8> :TagbarToggle<cr>

" YouCompleteMe settings
let g:ycm_global_ycm_extra_conf='~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_list_stop_completion = ['<c-y>', '<cr>']
let g:ycm_log_level='debug'
nnoremap <silent> <leader>gd :YcmCompleter GoTo<cr>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<cr>

" Find files using Telescope command-line sugar.
lua require('telescope').load_extension('fzf')
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

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

" A.L.E. (Python Linting)
if empty(mapcheck('<C-e>'))
    map <C-e> <Plug>(ale_next_wrap)
endif
if empty(mapcheck('<C-r'))
    map <C-r> <Plug>(ale_previous_wrap)
endif

