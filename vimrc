"General config
set hidden
set t_Co=256
au FileType * setl fo-=cro
filetype off                   " required!
set relativenumber
set nocompatible
syntax on
set directory=~/.vim/tmp
filetype plugin indent on     " required!
set backspace=indent,eol,start
set mouse=a
set clipboard=unnamed
set cursorline
set shell=/bin/sh
set expandtab

let g:gist_clip_command = 'pbcopy'

"Visual
set background=light
colorscheme solarized
set laststatus=2                                                                                       " Always show status line
set statusline=%F%m%r%h%w\ %Y\ [%l,%v]\ %{rvm#statusline()}\ %{fugitive#statusline()}\ (%{&ff})\ %p%%\ " Set a pretty status line

"Extra sourcing, #todo figure out how to solve
source ~/.vim/snippets/support_functions.vim
autocmd FileType cucumber source ~/.vim/after/ftplugin/cucumber.vim

"Indents / scroll
set tabstop=2
set shiftwidth=2
set scrolloff=8

"Timeout
set notimeout

"Search
set incsearch

"Folding settings
set foldmethod=indent " fold based on syntax
set foldnestmax=10    " deepest fold is 10 levels
set foldenable        " fold by default
set foldlevel=5       " this is just what i use

"Remappings
let mapleader = ","
let snippets_dir = "~/.vim/snippets"
let mapleader=','

"Fold remapping
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
map <leader>v :tabedit $MYVIMRC<CR>
map <leader>s :vs todo.txt<CR>
inoremap jj <Esc>

"Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

"vim-rspec
nmap <Leader>rr :RunSpecLine<CR>
nmap <Leader>rf :RunSpec<CR>

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

call pathogen#infect()
