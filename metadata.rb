name 'traefik'
maintainer 'The Authors'
maintainer_email 'guilhem@lettron.fr'
license 'apachev2'
description 'Installs/Configures traefik'
long_description 'Installs/Configures traefik'
version '0.1.0'
chef_version '>= 12.8'

issues_url 'https://github.com/guilhem/traefik/issues' if respond_to?(:issues_url)
source_url 'https://github.com/guilhem/traefik' if respond_to?(:source_url)

depends 'systemd'

gem 'toml-rb'
