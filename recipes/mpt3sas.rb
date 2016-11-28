#
# Cookbook Name:: hg_sas3ircu
# Recipe:: mpt3sas
#
# Copyright (c) 2016 Heig Gregorian, All Rights Reserved.

package 'kmod-mpt3sas' do
  action :install
end

kernel_module 'mpt3sas' do
  onboot true
  reload false
end
