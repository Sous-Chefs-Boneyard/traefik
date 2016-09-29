property :path, String, name_property: true
property :config, Hash, required: true

default_action :create

load_current_value do
  chef_gem 'toml' do
    compile_time true
  end

  if ::File.exist?(path)
    config = TOML.load_file(path)
  end
end

action :create do
  converge_if_changed do
    ::IO.write(path, TOML.dump(config))
  end
end
