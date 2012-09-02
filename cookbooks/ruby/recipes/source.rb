#
# Cookbook Name:: ruby
# Recipe:: source
#
# Copyright 2012, Kirishiki Studios
#
# All rights reserved - Do Not Redistribute
#

script "install_libyaml" do
  interpreter "bash"
  user "root"
  cwd "/usr/local/src/"
  code <<-EOH
  wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz
  tar zxvf yaml-0.1.4.tar.gz
  cd yaml-0.1.4
  ./configure --prefix=/usr/local
  make
  make install
  EOH
end

script "install_ruby" do
  interpreter "bash"
  user "root"
  cwd "/usr/local/src/"
  code <<-EOH
  wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p125.tar.gz
  tar zxvf ruby-1.9.3-p125.tar.gz
  cd ruby-1.9.3-p125
  ./configure --prefix=/usr/local --enable-shared --disable-install-doc --with-opt-dir=/usr/local/lib
  make
  make install
  EOH
end
