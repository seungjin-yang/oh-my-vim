#!/usr/bin/env sh
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

REPO_ARRAY=(
    https://github.com/tpope/vim-markdown.git
    https://github.com/vim-python/python-syntax.git
    https://github.com/octol/vim-cpp-enhanced-highlight.git
    https://github.com/Gullumluvl/vim-Condor.git
)

for REPO in ${REPO_ARRAY[@]}; do
    NAME=${REPO##*/}
    NAME=${NAME/".git"/""}
    DIR=~/.vim_runtime/my_plugins/${NAME}
    git clone ${REPO} ${DIR}
done

cp -v $(dirname `readlink -f ${BASH_SOURCE[0]}`)/my_configs.vim ~/.vim_runtime
