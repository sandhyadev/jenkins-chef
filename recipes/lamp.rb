#
# Cookbook:: .
# Recipe:: lamp
#
# Copyright:: 2019, The Authors, All Rights Reserved.

packages = ['libapache2-mod-php', 'apache2', 'php', 'mysql-server', 'php-mysql']

apt_update 'ubuntu' do
    ignore_failure true
    action :update
end

apt_package 'lamphk' do
    package_name packages
    action :install
end

file '/etc/init.d/apache2' do
    owner 'root'
end

service 'lamp3' do
    subscribes :start, 'file[/etc/init.d/apache2]', :immediately
end

cookbook_file '/var/www/html/phpinfo.php' do
    source 'phpinfo.php'
    owner 'root'
    action :create
end