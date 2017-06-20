default['traefik']['install']['version'] = '1.3.1'
default['traefik']['install']['install_method'] = 'binary'

default['traefik']['install']['binary']['version'] = node['traefik']['install']['version']
default['traefik']['install']['binary']['url'] = "https://github.com/containous/traefik/releases/download/v#{node['traefik']['install']['binary']['version']}/traefik_linux-amd64"
default['traefik']['install']['binary']['checksum'] = nil
default['traefik']['install']['binary']['path'] = '/usr/local/bin/traefik'
