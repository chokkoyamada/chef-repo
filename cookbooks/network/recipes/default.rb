#
# Cookbook Name:: network
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/sysconfig/network" do
  source "network.erb"
end

service "network" do
  action :restart
end

script "update_hostname" do
  interpreter "bash"
  user "root"
  code <<-EOH
  hostname #{node[:server_name]}
  EOH
end
