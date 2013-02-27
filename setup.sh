#!/bin/bash

ROOT_PATH=~/.janus

init() {
  cd $ROOT_PATH
  ln -s .ackrc ~/.ackrc
  ln -s .vimrc.before ~/.vimrc.before
  ln -s .vimrc.after ~/.vimrc.after
  git pull && git submodule init && git submodule update && git submodule status

  get_grb256
  get_wombat

  echo "Aliaksei Kliuchnikau's janus config is installed"
}

get_grb256() {
  download_vim_plugin https://raw.github.com/garybernhardt/dotfiles/master/.vim/colors/grb256.vim $ROOT_PATH/grb256/colors grb256.vim
}

get_wombat() {
  download_vim_plugin http://www.vim.org/scripts/download_script.php?src_id=6657 $ROOT_PATH/wombat/colors wombat.vim
}

download_vim_plugin() {
  mkdir -p $2
  wget -O $2/$3 $1
}

init
