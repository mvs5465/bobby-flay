######################################################
# Cookbook Name:: bobby-flay
# Recipe:: default
# Author: Matthew Schwartz 
#
# About: Configure and run a Flask server from a 
#        github repository.
######################################################

# Install the dependencies for Flask
execute 'update' do
  command 'apt-get update'
end

package 'python'
python_package 'Pip'
python_package 'Flask'

# Clone the example Flask repo
git '/tmp' do
  repository "https://github.com/mvs5465/mini-meyer.git"
  revision "master"
  action :sync
end
  
# Set envvar, init database, and start server
execute 'run_flask' do
  command 'export FLASK_APP=meyer.py && flask initdb && flask run'
end

