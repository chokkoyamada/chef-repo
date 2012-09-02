#
# Cookbook Name:: ruby
# Recipe:: mysql
#
# Copyright 2012, Kirishiki Studios
#
# All rights reserved - Do Not Redistribute
#

include_recipe "mysql::server"

gem_package 'mysql2' do
  action :install
end

gem_package 'activerecord-mysql2-adapter' do
  action :install
end
