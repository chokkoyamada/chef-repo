#
# Cookbook Name:: vim
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "vim" do
  action :install
end

template "/home/vagrant/.vimrc" do
  owner "vagrant"
  group "vagrant"
  source "vimrc.erb"
end

