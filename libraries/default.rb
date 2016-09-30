def resource_exists(name)
  begin
    resources name
    true
  rescue Chef::Exceptions::ResourceNotFound
    false
  end
end
