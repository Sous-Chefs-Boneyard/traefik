
remote_file 'Traefik binary' do
  path node['traefik']['install']['binary']['path']
  source node['traefik']['install']['binary']['url']
  checksum node['traefik']['install']['binary']['checksum']
  mode 0755
  notifies :restart, 'service[traefik]' if resource_exists('service[traefik]')
end

node.default['traefik']['service']['path'] = node['traefik']['install']['binary']['path']
