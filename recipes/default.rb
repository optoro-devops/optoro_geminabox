include_recipe 'apt'
include_recipe 'geminabox'
include_recipe 'optoro_ruby'

# disable any default sites that get resurrected by upgrades
%w(000-default default).each do |site|
  nginx_site site do
    enable false
    notifies :restart, 'service[nginx]'
  end
end

include_recipe 'optoro_geminabox::backup'
