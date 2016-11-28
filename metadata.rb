name 'hg_sas3ircu'
maintainer 'Heig Gregorian'
maintainer_email 'theheig@gmail.com'
license 'all_rights'
description 'Installs/Configures hg_sas3ircu'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.2'
depends 'kernel-modules'

supports 'centos'
supports 'redhat'
source_url 'https://github.com/hgregorian/hg_sas3ircu' if defined?(:source_url)
issues_url 'https://github.com/hgregorian/hg_sas3ircu/issues' if defined?(:issues_url)
