pbjorklunds vimfiles
====================
Keeping vim running since the summer of 2010.

Install vim with ruby support
----------------------------
    brew install https://raw.github.com/Homebrew/homebrew-dupes/master/vim.rb

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

    rvm install ruby-1.8.7
    rvm use 1.8.7
    cd ~/.vim/bundle/Command-T/ruby/command-t
    rvm use 1.8.7
    bundle 
    ruby extconf.rb
    make

Enjoy
