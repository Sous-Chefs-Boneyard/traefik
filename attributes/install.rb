default['traefik']['install']['version'] = '1.0.3'
default['traefik']['install']['install_method'] = 'binary'

default['traefik']['install']['binary']['version'] = node['traefik']['install']['version']
default['traefik']['install']['binary']['url'] = "https://github.com/containous/traefik/releases/download/v#{node['traefik']['install']['binary']['version']}/traefik_linux-amd64"
default['traefik']['install']['binary']['checksum'] = '784ede42d839c6e40781f59ddb63f20332be083d2e1f9bbd9593cf4f35a7cc0e'
default['traefik']['install']['binary']['path'] = '/usr/local/bin/traefik'
