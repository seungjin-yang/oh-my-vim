#!/usr/bin/env sh
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
git clone https://github.com/tpope/vim-markdown.git ~/.vim_runtime/my_plugins/vim-markdown
git clone https://github.com/vim-python/python-syntax.git ~/.vim_runtime/my_plugins/python-syntax
git clone https://github.com/octol/vim-cpp-enhanced-highlight.git ~/.vim_runtime/my_plugins/vim-cpp-enhanced-highlight

cp -v $(dirname `readlink -f ${BASH_SOURCE[0]}`)/my_configs.vim ~/.vim_runtime
