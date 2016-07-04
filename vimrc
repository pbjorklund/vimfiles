"General config
set hidden
set t_Co=256
au FileType * setl fo-=cro
filetype off                   " required!
set nocompatible
syntax on
set directory=~/.vim/tmp
filetype plugin indent on     " required!
set backspace=indent,eol,start
set mouse=a
"set clipboard=unnamedplus

set cursorline
set expandtab "Convert tabs to spaces
set wildmode=list:longest
set viminfo='0,:0,<0,@0,f0

if has("win32")
  "Windows options here
else
  if has("unix")
    call pathogen#infect()

    let s:uname = system("uname")
    if s:uname == "Darwin\n"
      "Mac options here
      let g:gist_clip_command = 'pbcopy'
    else
      let g:gist_clip_command = 'xclip -selection clipboard'
    endif
  endif
endif

"Visual
set background=dark
colorscheme default
set laststatus=2  " Always show status line

"Extra sourcing, #todo figure out how to solve
source ~/.vim/snippets/support_functions.vim

au FileType crontab set nobackup nowritebackup

"Indents / scroll
set tabstop=2
set shiftwidth=2
set scrolloff=8

"Timeout
set notimeout

"Search
set incsearch

"Folding settings
set foldmethod=manual
set foldnestmax=10    " deepest fold is 10 levels
set foldlevel=1
set foldlevelstart=99

"Remapping
let mapleader = ","
let snippets_dir = "~/.vim/snippets"
let mapleader=','

"Fold remapping
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

map <leader>v :e $MYVIMRC<CR>
map <leader>s :topleft 100 :split ~/Dropbox/todo.taskpaper<cr>
map <leader>f :e ~/notes<cr>
map <leader>n :e ~/notes/

inoremap jj <Esc>

"Window management
set splitright " Open new vertical split windows to the right of the current one, not the left.
set splitbelow " See above description. Opens new windows below, not above.

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>


" Switch easily between light and dark background. Useful for solarized
function! ToggleBackgroundColor()
  if &background == "dark"
    let &background="light"
  else
    let &background="dark"
  endif
endfunction

" Function keys
nmap <F1> :lopen<CR>

nnoremap <F2> :set invpaste paste?<CR> "Toggle paste mode
set pastetoggle=<F2>

nmap <F3> :call ToggleBackgroundColor()<CR>

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
