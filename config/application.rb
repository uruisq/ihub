require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Ihub
  class Application < Rails::Application
    config.load_defaults 5.2

    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    config.assets.initialize_on_precompile = false
  end
end
