source 'https://rubygems.org'

gem 'berkshelf', '~> 3.2.3'
gem 'aws-sdk', '~> 1.61.0'

group :integration do
  gem 'test-kitchen', '~> 1.3.1'
  gem 'kitchen-ec2', :github => 'test-kitchen/kitchen-ec2', :ref => '0a378d5'
  gem 'kitchen-docker', '~> 1.5.0'
  gem 'kitchen-vagrant', :git => 'git@github.com:test-kitchen/kitchen-vagrant.git', :ref => 'aa3ff9'
end

group :development do
  gem 'guard',  '~> 2.8.0'
  gem 'guard-rubocop',  '~> 1.2.0'
  gem 'guard-rspec',  '~> 4.3.0'
  gem 'guard-foodcritic',  '~> 1.0.3'
  gem 'guard-bundler',  '~> 2.0.0'
  gem 'chef-zero', '~> 2.2.1'
  gem 'foodcritic', '~> 4.0.0'
  gem 'chefspec', '~> 4.1.1'
  gem 'rspec', '~> 3.1.0'
  gem 'strainer', '~> 3.4.0'
  gem 'rubocop', '~> 0.27.1'
  gem 'knife-solo', '0.4.2'
  gem 'knife-solo_data_bag', '1.1.0'
end