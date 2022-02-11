source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Gemfile for Rails 3+
gem 'will_paginate', '~> 3.1.1'

# Use Brakeman to scan through the Application to help find weaknesses in security
gem 'brakeman', '~> 4.5.1'

# Use dalli gem to set up Rails app to start using Memcache
gem 'dalli'

gem 'redis'
gem 'redis-rails'

group :production do
  # Use pg to communicate with PostgreSQL databases
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Use RSpec to conduct unit and functional tests before writing code that goes live
  gem 'rspec-rails', '~> 3.8.2'
  # Use the following gem for functional tests via RSpec
  gem 'rails-controller-testing'
  # Create data factories while testing controller and model functions using FactoryBot
  gem 'factory_bot_rails', '~> 4.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use RSpec to conduct unit and functional tests before writing code that goes live
  gem 'rspec-rails', '~> 3.8.2'
end

# Gem Devise creates all the code necessary for user authentication
gem 'devise'

# Gem Cancancan creates all the code necessary for user authorization
gem 'cancancan', '~> 2.0'

# Github icons. Ruby gems with Ruby API.
gem 'octicons'

# Use Stripe as the payment processing system
gem 'stripe'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
