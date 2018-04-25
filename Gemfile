source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# rails-assets.org
source 'https://rails-assets.org' do
  # The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web.
  gem 'rails-assets-bootstrap', '3.3.7'
  # Sobrescreve o data-confirm do Rails pelo bootbox.js
  gem 'rails-assets-bootbox'
  # A simple, versatile notification library
  gem 'rails-assets-notifyjs'
end
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Ruby on Rails unobtrusive scripting adapter for jQuery
gem 'jquery-rails'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
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

# Flexible authentication solution for Rails with Warden.
gem 'devise'
# Translations for the devise gem.
gem 'devise-i18n'
# The font-awesome font bundled as an asset for the rails asset pipeline.
gem 'font-awesome-rails'
# Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff.
gem 'rails-i18n'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Translations for the kaminari gem
gem 'kaminari-i18n'
# Exception tracking and logging from Ruby to Rollbar
gem 'rollbar'
# RSpec for Rails-3+
gem 'rspec-rails', '~> 3.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Better error page for Rack apps
  gem "better_errors"
  gem "binding_of_caller"
  # Rails >= 3 pry initializer
  gem 'pry-rails'
  # A library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker'
  # A pack of Rails generators gem plugin that generates Rails 3 and Rails 2 I18n locale files for almost every known locale.
  gem 'i18n_generators'
  # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem 'brakeman', :require => false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  # JSON formatter for the ruby 1.9+ coverage gem SimpleCov
  gem 'simplecov-json', :require => false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
