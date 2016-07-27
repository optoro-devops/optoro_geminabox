name 'optoro_geminabox'
maintainer 'Optoro'
maintainer 'devops@optoro.com'
license 'MIT'
description 'Installs and configures gem in a box'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.6'

depends 'geminabox'
depends 'aws'
depends 'optoro_ruby'
depends 'zpool'
depends 'optoro_zfs'
depends 'nginx', '~> 2.7'
