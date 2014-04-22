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
#   command 'sudo ferry install'
# end
