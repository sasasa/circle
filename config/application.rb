require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Circle
  class Application < Rails::Application
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.time_zone = 'Tokyo'
    config.active_record.time_zone_aware_types = [:datetime, :time]
    config.generators do |g|
      g.helper false
      g.assets false
      g.test_framework :rspec, view_specs: false, helper_specs: false, controller_specs: false, fixture: true
      g.fixture_replacement :factory_girl
    end
  end
end
