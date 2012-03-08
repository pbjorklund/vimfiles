pbjorklunds vimfiles
====================
Keeping vim running since the summer of 2010.

Install vim with ruby support
----------------------------
    brew install https://raw.github.com/adamv/homebrew-alt/master/duplicates/vim.rb

Clone repo
----------
    git clone git@github.com:pbjorklund/vimfiles.git ~/.vim
    ln -s  ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    ln -s ~/.vim/jslintrc ~/.jslintrc
    cd ~/.vim
    git submodule update --init

Compile Command T
-----------------
    cd ~/.vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb
    make

Enjoy
