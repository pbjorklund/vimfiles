pbjorklunds vimfiles
====================
Keeping vim running since the summer of 2010.

Install vim with ruby support
----------------------------
    brew install vim --with-ruby --with-python

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
Will not build correctly without ruby 1.8.7 and rake 0.8.7.
If build succeds on first try, remember to run `make clean` before recompiling

    cd ~/.vim/bundle/Command-T/ruby/command-t
    bundle
    ruby extconf.rb
    make

Enjoy
