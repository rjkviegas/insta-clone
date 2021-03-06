source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Bootstrap
gem 'bootstrap', '~> 4.5', '>= 4.5.2'
# jquery for rails
gem 'jquery-rails', '~> 4.4'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.7', '>= 4.7.2'

# image storage
gem 'carrierwave', '~> 2.1'
gem "fog-aws"

# image resizing
gem 'mini_magick', '~> 4.10', '>= 4.10.1'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Rails best practices and coding conventions
gem 'rubocop-rails', '~> 2.7', '>= 2.7.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # rspec rails for testing framework
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  # factory bot rails for test data creation
  gem 'factory_bot_rails', '~> 6.1'
  # capybara for simulating users used of website
  gem 'capybara', '~> 3.33'
  # rails-controller-testing
  gem 'rails-controller-testing'
end

group :test do
  gem 'simplecov', require: false
  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # local ENV vars
  gem 'figaro', '~> 1.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
