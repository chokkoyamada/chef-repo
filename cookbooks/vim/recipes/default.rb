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

template "/home/#{node[:user_name]}/.vimrc" do
  owner node[:user_name]
  group node[:user_name]
  source "vimrc.erb"
end

