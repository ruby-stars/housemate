# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.3'
gem 'bootstrap', '~> 4.1.2'
gem 'bootstrap-datepicker-rails'
gem 'cancancan', '~> 2.0'
gem 'carrierwave', '~> 1.2.2'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'fog-aws'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mini_magick'
gem 'pg'
gem 'puma', '~> 5.6'
gem 'rails', '~> 5.1.4'
gem 'sass-rails', '~> 5.0'
gem 'sprockets-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen'
  gem 'web-console', '>= 3.3.0'
end
