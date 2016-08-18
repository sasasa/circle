#coding: utf-8

require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/webkit'
require 'capybara/poltergeist'

require 'turnip'
require 'turnip/capybara'
require 'headless'
require 'database_cleaner'


RSpec.configure do |config|
  Capybara.javascript_driver = :poltergeist
  Capybara.default_driver = :poltergeist
  #  :webkit or :selenium

  config.before(:suite) do
    Headless.new(:destroy_on_exit => false).start
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.order = :random
end