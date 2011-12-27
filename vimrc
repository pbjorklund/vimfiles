set t_Co=256
au FileType * setl fo-=cro
filetype off                   " required!

syntax on
set background=light
"colorscheme tir_black
colorscheme solarized
set directory=~/.vim/tmp
filetype plugin indent on     " required!

set tabstop=2
set shiftwidth=2
set titlestring=%f title "Display filename in term
set scrolloff=5

set notimeout
set ttimeout
set timeoutlen=50

"Remappings
map <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :YRShow<CR>
map <F4> :A<CR>
let mapleader = ","
inoremap jj <Esc>
imap <Tab> <C-P>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" No Help, please
nmap <F1> <Esc>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'https://github.com/tpope/vim-rails.git'
Bundle 'matchit.zip' 
Bundle 'bufexplorer.zip'
Bundle 'wincent/Command-T'
Bundle 'Gist.vim'
Bundle 'rubycomplete.vim'
Bundle 'http://github.com/mattn/zencoding-vim'
Bundle 'https://github.com/tpope/vim-haml.git'

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html

set splitright " Open new vertical split windows to the right of the current one, not the left.
set splitbelow " See above description. Opens new windows below, not above.

" Set options for Zen Coding
let g:use_zen_complete_tag = 1
