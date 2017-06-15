name 'traefik'
maintainer 'redguide team'
maintainer_email 'guilhem@lettron.fr'
license 'Apache-2.0'
description 'Installs/Configures traefik'
long_description 'Installs/Configures traefik'
version '0.1.3'

chef_version '>= 12.8' if respond_to?(:chef_version)

issues_url 'https://github.com/redguide/traefik/issues' if respond_to?(:issues_url)
source_url 'https://github.com/redguide/traefik' if respond_to?(:source_url)

supports 'centos'
supports 'ubuntu'

depends 'systemd'

gem 'toml', '~> 1.0.0'
