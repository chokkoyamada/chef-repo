#
# Cookbook Name:: python
# Recipe:: pip
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "python"

package "python-setuptools" do
  action :install
end

easy_install_package "pip" do
  action :install
end

