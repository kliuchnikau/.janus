#!/usr/bin/env ruby

task :default do
  `ln -s ~/.janus/.vimrc.before ~/.vimrc.before
  ln -s ~/.janus/.vimrc.after ~/.vimrc.after
  git pull && git submodule init && git submodule update && git submodule status`
  
  puts "Aliaksei Kliuchnikau's janus config is installed"
end
