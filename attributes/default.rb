#
# Cookbook Name:: hg_sas3ircu
# Attribute:: default
#
# Copyright (c) 2016 Heig Gregorian, All Rights Reserved.

## Native attributes
default['hg_sas3ircu']['release'] = '13'
default['hg_sas3ircu']['download_url'] = "http://docs.avagotech.com/docs-and-downloads/host-bus-adapters/host-bus-adapters-common-files/sas_sata_12g_p#{node['hg_sas3ircu']['release']}/SAS3IRCU_P#{node['hg_sas3ircu']['release']}.zip"
