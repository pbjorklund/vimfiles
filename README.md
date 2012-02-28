pbjorklunds vimfiles
====================
Keeping vim running since the summer of 2010.

 ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim

CommandT requires that vim is compiled with ruby support
--------------------------------------------------------
brew install https://raw.github.com/adamv/homebrew-alt/master/duplicates/vim.rb

Compile Command T
-----------------
cd ~/.vim/bundle/Command-T/ruby/command-t
ruby extconf.rb
make
