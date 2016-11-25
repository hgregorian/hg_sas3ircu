#
# Cookbook Name:: hg_sas3ircu
# Recipe:: default
#
# Copyright (c) 2016 Heig Gregorian, All Rights Reserved.

include_recipe 'hg_sas3ircu::mpt3sas' if node['hg_sas3ircu']['install_kernel_module']
include_recipe 'hg_sas3ircu::sas3ircu'
