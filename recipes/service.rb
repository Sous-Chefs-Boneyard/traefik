systemd_service 'traefik' do
  description 'Træfɪk, a modern reverse proxy'
  after %w( network.target remote-fs.target nss-lookup.target )
  install do
    wanted_by 'multi-user.target'
  end
  service do
    exec_start lazy { "#{node['traefik']['service']['path']} --configFile=#{node['traefik']['config_file']}" }
    restart 'always'
    private_tmp true
  end
  notifies :enable, 'service[traefik]', :immediately
  notifies :start, 'service[traefik]'
  only_if { ::File.open('/proc/1/comm').gets.chomp == 'systemd' } # systemd
  not_if { node['traefik']['service']['path'].empty? }
end

service 'traefik' do
  supports :status => true, :restart => true
  action :nothing
end
