#!/usr/bin/env ruby

ROOT_PATH = '~/.janus'

task :default => [:get_grb256] do
  `ln -s #{ROOT_PATH}/.vimrc.before ~/.vimrc.before
  ln -s #{ROOT_PATH}/.vimrc.after ~/.vimrc.after
  cd #{ROOT_PATH}
  git pull && git submodule init && git submodule update && git submodule status`

  puts "Aliaksei Kliuchnikau's janus config is installed"
end

task :get_grb256 do
  grb_color_path = ROOT_PATH + '/Grb256/colors'

  `mkdir -p #{grb_color_path}
  wget -O #{grb_color_path}/grb256.vim https://raw.github.com/garybernhardt/dotfiles/master/.vim/colors/grb256.vim`
end
