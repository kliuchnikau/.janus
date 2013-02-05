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
  download_vim_plugin 'https://raw.github.com/garybernhardt/dotfiles/master/.vim/colors/grb256.vim',
    ROOT_PATH + '/grb256/colors', 'grb256.vim'
end

task :get_wombat do
  download_vim_plugin 'http://www.vim.org/scripts/download_script.php?src_id=6657',
    ROOT_PATH + '/wombat/colors', 'wombat.vim'
end

def download_vim_plugin from_url, to_path, file_name
  `mkdir -p #{to_path}
  wget -O #{to_path}/#{file_name} #{from_url}`
end
