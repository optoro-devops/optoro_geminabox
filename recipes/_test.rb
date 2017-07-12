# Recipe just for kitchen tests

user 'ubuntu' do
  home '/home/ubuntu'
  shell '/bin/bash'
end

directory '/home/ubuntu' do
  action :create
  owner 'ubuntu'
  group 'ubuntu'
end
