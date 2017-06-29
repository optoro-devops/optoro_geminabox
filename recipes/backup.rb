s3_credentials = Chef::EncryptedDataBagItem.load('passwords', 's3backup')

template '/home/ubuntu/.s3cfg' do
  source 's3cfg.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0600'
  variables(
    s3_access_key_id: s3_credentials['access_key_id'],
    s3_secret_access_key: s3_credentials['secret_access_key']
  )
end

template '/home/ubuntu/backup.sh' do
  source 'backup.sh.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode '0755'
  variables(
    backup_dir: node['optoro_geminabox']['backup']['dir'],
    s3_bucket: node['optoro_geminabox']['backup']['s3_bucket']
  )
end
