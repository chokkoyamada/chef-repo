#
# Cookbook Name:: apache
# Recipe:: mod_wsgi
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apache"

package "mod_wsgi" do
  action :install
end

tempalte "/etc/httpd/conf.d/wsgi.conf" do
  source "wsgi.conf"
  action :create
  mode 0644
  notifies :restart, "service[httpd]" 
end
