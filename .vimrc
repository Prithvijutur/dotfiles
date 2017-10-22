" Plugin manager https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'git://github.com/tpope/vim-fugitive.git'
Plug 'git://github.com/altercation/vim-colors-solarized.git'
Plug 'git://github.com/mxw/vim-jsx.git'
Plug 'git://github.com/bling/vim-airline.git'
Plug 'git://github.com/pangloss/vim-javascript.git'
Plug 'git://github.com/scrooloose/nerdtree.git'
Plug 'git://github.com/jistr/vim-nerdtree-tabs.git'
Plug 'git://github.com/mxw/vim-jsx.git'
Plug 'git://github.com/scrooloose/nerdcommenter.git'
Plug 'git://github.com/terryma/vim-expand-region.git'
Plug 'git://github.com/moll/vim-node.git'
Plug 'git://github.com/vim-scripts/EasyGrep.git'
Plug 'git://github.com/Lokaltog/vim-easymotion.git'
Plug 'git://github.com/mileszs/ack.vim.git'
Plug 'git://github.com/mhinz/vim-startify.git'
Plug 'git://github.com/kien/ctrlp.vim.git'
Plug 'git://github.com/vim-airline/vim-airline-themes'
call plug#end()

" Highlight problematic whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set paste
" pastetoggle (sane indentation on pastes)
set pastetoggle=<F12>

" Remove backward compatability
set nocompatible
"Hide default status bar, will use vim-airline
set noshowmode
"Remap option+right arrow to w
nnoremap <Char-0x66> w
" Map space to leader key
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>p :p<CR>
nnoremap <Leader>x :x<CR>
set mouse=a
set syntax=javascript
set autoindent
set cindent
set ic
" ignore case if all lowercase
set smartcase
"inoremap { {<CR>}<up><end><CR>
nnoremap <Leader>w :w<CR>
" Start NERDTree
 autocmd VimEnter * NERDTree
 autocmd VimEnter * wincmd p
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
let g:nerdtree_tabs_open_on_console_startup=1
filetype plugin indent on
xnoremap p pgvy
set number
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
hi Directory guifg=#FF0000 ctermfg=red
nnoremap <C-b>  :tabprevious<CR>
inoremap <C-b>  <Esc>:tabprevious<CR>i
nnoremap <C-n>  :tabnext<CR>
inoremap <C-n>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-k>  :tabclose<CR>
inoremap <C-k>  <Esc>:tabclose<CR>i
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*artifacts,*/build/**.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|components-dist|artifacts|build)|(\.(swp|ico|git|svn))$'
set autoread
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
vnoremap // y/<C-R>"<CR>
" Start NERDTree
 autocmd VimEnter * NERDTree
" " Go to previous (last accessed) window.
 autocmd VimEnter * wincmd p

"syntax enable
"set background=dark
"colorscheme solarized
"let g:airline_powerline_fonts = 1
"let g:bufferline_echo = 0
"let g:airline#extensions#tabline#enabled = 1
"
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
set showmatch


set nobackup
set nowritebackup
set noswapfile
set scrolloff=3

" Folding settings
set foldmethod=indent
set foldlevel=20
set foldlevelstart=20

"Disable x from cutting, map to black hole register
nnoremap x "_x
vnoremap x "_x

"Vim expand region remaps
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
" Ack default options
"let g:ack_default_options =  " -l --nocolor --nogroup"

"vim-node open requires in a vertical spilt
autocmd User Node
\ if &filetype == "javascript" |
\   nmap <buffer> <Leader>gf <Plug>NodeVSplitGotoFile |
\   nmap <buffer> <Leader>gf <Plug>NodeVSplitGotoFile |
\ endif

"Easy motion config
"map <Leader> <Plug>(easymotion-prefix)
