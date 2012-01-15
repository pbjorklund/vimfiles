set t_Co=256
au FileType * setl fo-=cro
filetype off                   " required!
set relativenumber
set nocompatible

"Extra sourcing, #todo figure out how to solve
source ~/.vim/snippets/support_functions.vim

autocmd FileType cucumber source ~/.vim/after/ftplugin/cucumber.vim

syntax on
set background=light
colorscheme solarized
set directory=~/.vim/tmp
filetype plugin indent on     " required!

set laststatus=2    " Always show status line
set statusline=%F%m%r%h%w\ %Y\ [%l,%v]\ %{rvm#statusline()}\ %{fugitive#statusline()}\ (%{&ff})\ %p%%\

set tabstop=2
set shiftwidth=2
set titlestring=%f title "Display filename in term
set scrolloff=8

set notimeout
set ttimeout
set timeoutlen=50

"Remappings
let mapleader = ","
let snippets_dir = "~/.vim/snippets"
"Tabularize
let mapleader=','

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
nmap <leader>v :tabedit $MYVIMRC<CR>
inoremap jj <Esc>

"Window management
set splitright " Open new vertical split windows to the right of the current one, not the left.
set splitbelow " See above description. Opens new windows below, not above.
" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Set options for Zen Coding
let g:use_zen_complete_tag = 1

" No Help, please
nmap <F1> <Esc>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
"Github
Bundle 'gmarik/vundle'
Bundle 'msanders/snipmate.vim'

Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-fugitive.git'

Bundle 'wincent/Command-T'
Bundle 'mattn/zencoding-vim'
Bundle 'godlygeek/tabular'

"Vim repo
Bundle 'matchit.zip'
Bundle 'bufexplorer.zip'
Bundle 'rvm.vim'
Bundle 'Gist.vim'
Bundle 'rubycomplete.vim'

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
