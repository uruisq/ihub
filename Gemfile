source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Core
gem 'bootsnap', '>= 1.1.0', require: false
gem 'rails', '~> 5.2.4'

# Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'

# Frontend
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'bcrypt', '~> 3.1.7'
gem 'rails-i18n', '~> 5.1'

# Backend
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'spring'

  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Authentication
gem 'devise'
gem 'cancancan'
gem 'rails_admin', '~> 2.0'

# deviseの日本語化用
gem 'devise-i18n'
gem 'font-awesome-rails'

# Bootstrap4
gem 'bootstrap', ">= 4.3.1"
gem 'jquery-rails'

# ransack
gem 'ransack'
gem 'enum_help'
gem 'kaminari', '~> 0.17.0'

# mofmofよりnested_form関連
# gem 'cocoon'

# amazonのapiを使う
gem 'rakuten_web_service'
gem 'dotenv-rails'
gem 'gon'