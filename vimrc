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
set clipboard=unnamedplus

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
    endif
  endif
endif

let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

"Visual
set background=dark
colorscheme solarized
set laststatus=2  " Always show status line

set statusline=%F%m%r%h%w\ %Y\ [%l,%v]\ %{fugitive#statusline()}\(%{&ff})\ %p%%

"Extra sourcing, #todo figure out how to solve
source ~/.vim/snippets/support_functions.vim
autocmd FileType cucumber source ~/.vim/after/ftplugin/cucumber.vim

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

"Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

"CommanT mappings from
"https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets/sass<cr>
map <leader>gf :CommandTFlush<cr>\|:CommandT features<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandTTag<cr>
map <leader>t :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

"vim-rspec
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
let g:rspec_command = "!zeus rspec {spec}"

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

nmap <F4> :Gstatus<CR>
nmap <F5> :Gcommit<CR>
nmap <F10> :TagbarToggle<CR>

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

