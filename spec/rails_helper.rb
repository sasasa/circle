# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'

require 'shoulda/matchers'
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec

    # shoulda-matchersを使いたいテストライブラリを指定
    with.library :active_record
    with.library :active_model
    with.library :action_controller
    with.library :rails
  end
end
# Add additional requires below this line. Rails is not loaded until this point!
Dir.glob("spec/**/*steps.rb") { |f| load f, true}
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
