require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require "active_codhab"

module SampleApp
  class Application < Rails::Application
    config.load_defaults 5.1
    I18n.config.enforce_available_locales = true
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :'pt-BR'
  end
end

