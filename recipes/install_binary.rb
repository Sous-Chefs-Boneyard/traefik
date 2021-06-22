remote_file 'traefik' do
  path node['traefik']['install']['binary']['path']
  source node['traefik']['install']['binary']['url']
  checksum node['traefik']['install']['binary']['checksum']
  mode '755'
end

node.default['traefik']['service']['path'] = node['traefik']['install']['binary']['path']
