#
# Cookbook Name:: jenkins_svr
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# install Jenkins
package "jenkins" do
	action :install
end
# start the Jenkins service
# make sure Jenkins service is started after machine reboot
service "jenkins" do
	action [:enable, :start]
end
# write our home page
#cookbook_file "/var/www/index.html" do
#	source "index.html"
#	mode "0644"
#end