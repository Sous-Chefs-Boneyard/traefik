property :path, String, name_property: true
property :config, Hash, required: true

default_action :create

load_current_value do
  require 'toml'
  if ::File.exist?(path)
    config ::TOML.load_file(path)
  else
    current_value_does_not_exist!
  end
end

action :create do
  require 'toml'
  converge_if_changed do
    ::IO.write(path, ::TOML.dump(config))
  end
end
