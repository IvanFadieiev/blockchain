require_relative 'boot'

require 'rails'

%w(
  active_record/railtie
  action_controller/railtie
  action_view/railtie
  active_storage/engine
  sprockets/railtie
).each do |railtie|
  begin
    require railtie
  rescue LoadError
  end
end

Bundler.require(*Rails.groups)

module TestBlockchain
  class Application < Rails::Application
    config.load_defaults 5.2
  end
end
