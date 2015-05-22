# Description

Installs and configures gem in a box

# Requirements

## Platform:

* Ubuntu (= 14.04)

## Cookbooks:

* geminabox
* aws
* optoro_ruby
* zpool
* optoro_zfs
* nginx (= 2.7.4)

# Attributes

* `node['geminabox']['rubygems_proxy']` -  Defaults to `true`.
* `node['gem_server']['allow_remote_failure']` -  Defaults to `true`.
* `node['geminabox']['disks']` -  Defaults to `[ ... ]`.
* `node['geminabox']['nginx']['bind']` -  Defaults to `0.0.0.0`.

# Recipes

* optoro_geminabox::default

# License and Maintainer

Maintainer:: devops@optoro.com (<YOUR_EMAIL>)

License:: MIT
