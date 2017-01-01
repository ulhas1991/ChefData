# apacheDemo
package 'apache' do
	package_name 'httpd'
end

service 'apache' do
	action [:start, :enable]
end
