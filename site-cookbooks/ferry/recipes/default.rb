#
# Cookbook Name:: ferry
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'python'

group 'docker' do
  action :modify
  members ['vagrant']
end

python_pip 'ferry' do
  action :upgrade
end

template '/home/vagrant/openmpi.yaml' do
  source 'openmpi.yaml.erb'
end

# execute 'install ferry' do
#   command 'ferry install -u ferry-base -u mongodb -u gluster -u openmpi -u openmpi-client'
#   user 'vagrant'
# end

# execute 'ferry server' do
#   command 'ferry server'
#   user 'vagrant'
# end

# execute 'ferry start' do
#   command 'ferry start ~/openmpi.yaml'
#   user 'vagrant'
# end
