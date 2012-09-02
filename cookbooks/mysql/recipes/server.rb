#
# Cookbook Name:: mysql
# Recipe:: server
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(mysql-server mysql-devel) do |package_name|
  package package_name do
    action :install
  end
end

