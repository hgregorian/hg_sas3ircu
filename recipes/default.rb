#
# Cookbook Name:: hg_sas3ircu
# Recipe:: default
#
# Copyright (c) 2016 Heig Gregorian, All Rights Reserved.

package 'kmod-mpt3sas' do
  notifies :run, 'execute[load mpt3sas]'
  action :upgrade
end

execute 'load mpt3sas' do
  command 'modprobe mpt3sas'
  action :nothing
end

archive_name = File.basename(node['hg_sas3ircu']['download_path'])

remote_file "#{Chef::Config[:file_cache_path]}/#{archive_name}" do
  source node['hg_sas3ircu']['download_path']
  mode '0755'
  not_if { ::File.exist?("/usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}") }
end

bash 'unpack and install sas3ircu' do
  cwd '/tmp'
  code <<-EOF
    unzip -j -o "#{Chef::Config[:file_cache_path]}/#{archive_name}" "#{archive_name.sub(/\..*/, '')}"/sas3ircu_linux_x64_rel/sas3ircu
    chmod 755 sas3ircu
    mv sas3ircu /usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}
  EOF
  not_if { ::File.exist?("/usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}") }
end

link '/usr/local/sbin/sas3ircu' do
  to "/usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}"
end
