syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set number
set smartcase
set mouse=a

" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel

autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark

" NerdTree

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

" PLUGINS ---------------------------------------------------------------- {{{
nmap <F2> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'dense-analysis/ale'
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'jiangmiao/auto-pairs' 
    Plug 'preservim/tagbar'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug  'vim-ruby/vim-ruby'
call plug#end()

" }}}
