set guifont=Monaco:h14

"set antialias
"set guioptions-=t
"set guioptions=-T

"set fuopt=maxvert,maxhorz

"No audible bell
set vb

" No toolbar
set guioptions-=T

" Use console dialogs
set guioptions+=c

" Local config
if filereadable($HOME . "/.gvimrc.local")
  source ~/.gvimrc.local
endif

