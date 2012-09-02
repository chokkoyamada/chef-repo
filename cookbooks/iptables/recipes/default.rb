#
# Cookbook Name:: iptables
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/sysconfig/iptables" do
  source "iptables.erb"
end

service "iptables" do
  action :restart
end

