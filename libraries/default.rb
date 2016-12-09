def resource_exists(name)
  resources name
  true
rescue Chef::Exceptions::ResourceNotFound
  false
end
