require 'spec_helper'

describe zfs('geminabox_cache/data') do
  it { should exist }
end

describe zfs('geminabox_cache/data') do
  it { should have_property 'mountpoint' => '/var/www/geminabox/data', 'compression' => 'lz4', 'atime' => 'off' }
end

describe port(80) do
  it { should be_listening }
end

describe service('geminabox') do
  it { should be_enabled }
  it { should be_running }
end
