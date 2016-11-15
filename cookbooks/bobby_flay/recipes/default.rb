#
# Cookbook Name:: bobby-flay
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

file '/tmp/helloworld.txt' do
  content 'Hola al Mundo'
end

execute 'print_world' do
  command 'cat /tmp/helloworld.txt'
end

python_package 'Flask'

cookbook_file '/tmp/hello.py' do
  source 'hello.py' 
  action :create
end

execute 'start_server' do
  command 'python /tmp/hello.py'
end
