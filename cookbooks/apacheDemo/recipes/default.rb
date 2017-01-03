#
# Cookbook:: apacheDemo
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
if node['platform_family']=='rhel'
	package_name='httpd'
elsif node['platform_family']=='debian'
	package_name='apache2'
end
package 'apache' do
        package_name package_name
end

service 'apache' do
	service_name 'httpd'
        action [:start, :enable]
end  
include_recipe 'apacheDemo::websiteData'
