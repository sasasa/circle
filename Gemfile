source 'https://rubygems.org'

ruby "2.3.1"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'honoka-rails' #v3
#gem 'bootstrap' #v4
#gem 'bootstrap-sass' #v3
gem 'country_select'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'rails-i18n'
gem 'simple_form'
# See https://github.com/rails/execjs#readme for more supported runtimes

gem 'execjs'
gem 'therubyracer', platforms: :ruby
# require "execjs"
# therubyracer が利用可能
# ExecJS.runtime.name # => "therubyracer (V8)"
# therubyracer が利用不可能
# ExecJS.runtime.name # => "Node.js (V8)"

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'pg' # For Heroku
  gem 'rails_12factor' # For Heroku Rails
end

group :test do
  gem 'rails-controller-testing'
  gem "shoulda-matchers"
end
group :development, :test do
  gem 'annotate'
  # Rspec
  gem 'rspec-rails'
  # test fixture
  gem 'factory_girl_rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'capybara'
  gem 'turnip'
  gem 'sqlite3'
  gem 'database_cleaner'
  gem 'capybara-webkit'
  gem 'headless'
  gem 'poltergeist'
end

group :development do
  gem "tapp" # bundle exec tapp grep
  gem "view_source_map"
  gem 'rack-mini-profiler'
  gem "better_errors"
  gem "binding_of_caller"
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  # Pry & extensions
  gem 'pry-rails'
  gem 'pry-coolline'
  gem 'pry-byebug'
  gem 'rb-readline'
  # Show SQL result in Pry console
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'awesome_print'
  # PG/MySQL Log Formatter
  gem 'rails-flog'

  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-livereload', require: false

  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem "spring-commands-rspec"
  gem 'rubocop', require: false
  gem 'spring-commands-rubocop'
  gem "spring-commands-cucumber"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
