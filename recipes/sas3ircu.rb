#
# Cookbook Name:: hg_sas3ircu
# Recipe:: sas3ircu
#
# Copyright (c) 2016 Heig Gregorian, All Rights Reserved.

package 'unzip'

archive_name = File.basename(node['hg_sas3ircu']['download_url'])

remote_file "#{Chef::Config[:file_cache_path]}/#{archive_name}" do
  source node['hg_sas3ircu']['download_url']
  not_if { ::File.exist?("/usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}") }
end

bash 'unpack and install sas3ircu' do
  cwd '/tmp'
  code <<-EOF.gsub(/^ {4}/, '')
    unzip -j -o "#{Chef::Config[:file_cache_path]}/#{archive_name}" "#{archive_name.sub(/\..*/, '')}"/sas3ircu_linux_x64_rel/sas3ircu
    mv sas3ircu /usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}
  EOF
  not_if { ::File.exist?("/usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}") }
end

file "/usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}" do
  mode '0755'
end

link '/usr/local/sbin/sas3ircu' do
  to "/usr/local/sbin/sas3ircu-#{node['hg_sas3ircu']['release']}"
end
