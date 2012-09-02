#
# Cookbook Name:: ruby
# Recipe:: rails
#
# Copyright 2012, Kirishiki Studios
#
# All rights reserved - Do Not Redistribute
#

%w(rails execjs therubyracer).each do |gem_name|
  gem_package gem_name do
    action :install
  end
end

