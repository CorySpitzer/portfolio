source 'https://rubygems.org'

gem 'rails'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'devise'
gem 'bcrypt'
gem 'will_paginate', '> 3.0'
gem 'simple_form'
gem 'bootswatch-rails'
gem "haml-rails", "~> 0.9"

group :production do
  # Make heroku work better, see
  # devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup
  # and
  # github.com/heroku/rails_12factor
  gem 'rails_12factor'
end

group :development do
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
  gem 'quiet_assets'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'launchy'
  gem 'pry'
  # Allow hiding sensitive info
  gem 'dotenv-rails'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'simplecov', require: false
  gem 'poltergeist'
  gem 'database_cleaner'
end

ruby "2.2.0"
