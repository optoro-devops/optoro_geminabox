default['geminabox']['rubygems_proxy'] = true
default['gem_server']['allow_remote_failure'] = true
default['geminabox']['disks'] = ['/dev/xvdf']
default['geminabox']['nginx']['bind'] = '0.0.0.0'
default['geminabox']['unicorn']['timeout'] = 300

default['optoro_geminabox']['backup']['dir'] = '/var/www/geminabox/data'
default['optoro_geminabox']['backup']['s3_bucket'] = 'optoro-db-backups'
