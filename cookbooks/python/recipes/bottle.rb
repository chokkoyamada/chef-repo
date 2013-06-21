#
# Cookbook Name:: python
# Recipe:: bottle
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python::pip"

bash "install bottle" do
  user "root"
  code <<-EOH
    pip install bottle
  EOH
end
