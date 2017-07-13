name 'optoro_geminabox'
maintainer 'Optoro'
maintainer_email 'devops@optoro.com'
license 'MIT'
description 'Installs and configures gem in a box'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.8'
issues_url 'https://github.com/optoro-devops/optoro_geminabox/issues'
source_url 'https://github.com/optoro-devops/optoro_geminabox'

depends 'apt'
depends 'geminabox'
depends 'nginx', '~> 2.7'
depends 'optoro_ruby', '~> 1.1.1'
