#
# Cookbook Name:: website
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'nginx'

service 'nginx' do
  action [:start, :enable]
end

template '/usr/share/nginx/www/index.html' do
  owner 'root'
  group 'root'
  mode '0644'
end
