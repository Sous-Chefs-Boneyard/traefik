include_recipe 'traefik::install'
include_recipe 'traefik::service'

directory ::File.dirname(node['traefik']['config_file']) do
  owner 'root'
  group 'root'
  mode '755'
  recursive true
  action :create
end

traefik_config node['traefik']['config_file'] do
  config node['traefik']['config']
  notifies :restart, 'service[traefik]' if resource_exists('service[traefik]')
end
