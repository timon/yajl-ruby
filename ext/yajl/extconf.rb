# encoding: UTF-8
require 'mkmf'
require 'rbconfig'

if RbConfig::MAKEFILE_CONFIG['CC'] =~ /gcc/
  $CFLAGS << ' -Wall -funroll-loops'
  $CFLAGS << ' -Wextra -O0 -ggdb3' if ENV['DEBUG']
else
  $CFLAGS << ' -O0 -g' if ENV['DEBUG']
end

create_makefile("yajl")
