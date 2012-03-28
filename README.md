## Setup

    git clone git://github.com/yas375/emacs-config.git ~/.emacs.d
    cd ~/.emacs.d
    git submodule update --init --recursive
    cp env.el.example env.el
    # edit env.el

Env.el is under gitignore. This file used for system independent configuration. Now I specify there path to ruby 1.9 binary. It is required by enhanced-ruby-mode.
