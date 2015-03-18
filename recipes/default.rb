include_recipe 'geminabox'
include_recipe 'optoro_zfs'
include_recipe 'aws'

aws_ebs_volume 'geminabox_cache' do
  size 50
  device '/dev/sdf'
  action [:create, :attach]
end

zpool 'geminabox_cache' do
  disks node['geminabox']['disks']
  mountpoint 'none'
  force true
end

zfs 'geminabox_cache/data' do
  mountpoint "#{node['geminabox']['base_directory']}/#{node['geminabox']['data_directory']}"
  atime 'off'
  compression 'lz4'
end

directory "#{node['geminabox']['base_directory']}/#{node['geminabox']['data_directory']}" do
  owner node['geminabox']['www_user']
  group node['geminabox']['www_user']
  recursive true
end
