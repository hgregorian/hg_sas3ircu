# hg_sas3ircu cookbook

Simply installs the 'sas3ircu' utility as provided by [Avago downloads].

## Supported Platforms

* CentOS 6/7

## Attributes

| Key | Type | Description | Default |
| --- | ---- | ----------- | ------- |
|`node['hg_sas3ircu']['release']`|String|Release of `sas3ircu` to install|'13'|
|`node['hg_sas3ircu']['download_url']`|String|URL to retrieve zip archive (URL is formed using above release)|[see default attributes](attributes/default.rb)|

## Usage

### hg_sas3ircu::default

Include `hg_sas3ircu`:

```ruby
include_recipe 'hg_sas3ircu::default'
```

## License and Authors

Author:: Heig Gregorian (theheig@gmail.com)

[Avago downloads]: http://www.avagotech.com/support/download-search/?productFamilyName=&area2=All;SAS+9200-8e+Host+Bus+Adapter;SAS+9201-16e+Host+Bus+Adapter;SAS+9201-16i+Host+Bus+Adapter;SAS+9202-16e+Host+Bus+Adapter;SAS+9206-16e+Host+Bus+Adapter;SAS+9207-4i4e+Host+Bus+Adapter;SAS+9207-8e+Host+Bus+Adapter;SAS+9207-8i+Host+Bus+Adapter;SAS+9210-8i+Host+Bus+Adapter;SAS+9211-4i+Host+Bus+Adapter;SAS+9211-8i+Host+Bus+Adapter;SAS+9212-4i4e+Host+Bus+Adapter;SAS+9217-4i4e+Host+Bus+Adapter;SAS+9217-8i+Host+Bus+Adapter;SAS+9300-16e+Host+Bus+Adapter;SAS+9300-16i+Host+Bus+Adapter;SAS+9300-4i+Host+Bus+Adapter;SAS+9300-4i4e+Host+Bus+Adapter;SAS+9300-8e+Host+Bus+Adapter;SAS+9300-8i+Host+Bus+Adapter;SAS+9302-16e+Host+Bus+Adapter;SAS+9305-16e+Host+Bus+Adapter;SAS+9305-16i+Host+Bus+Adapter;SAS+9305-24i+Host+Bus+Adapter;SAS+9311-4i4e+Host+Bus+Adapter;SAS+9311-8i+Host+Bus+Adapter;&area3=Management+Software+and+Tools&area4=&dnd-keyword=sas3ircu
