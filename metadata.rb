name 'traefik'
maintainer 'redguide team'
maintainer_email 'guilhem@lettron.fr'
license 'Apache-2.0'
description 'Installs/Configures traefik'
version '0.2.0'

chef_version '>= 12.8'

issues_url 'https://github.com/redguide/traefik/issues'
source_url 'https://github.com/redguide/traefik'

supports 'centos'
supports 'ubuntu'

depends 'systemd', '~> 2.1.3'

gem 'toml-rb', '~> 1.0.0'
