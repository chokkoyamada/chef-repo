#
# Cookbook Name:: ruby
# Recipe:: rvm
#
# Copyright 2012, Kirishiki Studios
#
# All rights reserved - Do Not Redistribute
#

package "git" do
  action :install
end

script "install_rvm" do
  not_if "rubytest=`ruby -e 'puts RUBY_VERSION' | grep '1.9.3'`"
  interpreter "bash"
  user "root"
  cwd "/usr/local/src/"
  code <<-EOH
  curl -L https://get.rvm.io | bash -s stable
  source "/usr/local/rvm/scripts/rvm"
  command rvm install 1.9.3
  rvm use 1.9.3 --default
  EOH
end

